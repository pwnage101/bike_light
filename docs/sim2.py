import os

import matplotlib.pyplot as plt

import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging()

from PySpice.Probe.Plot import plot
from PySpice.Spice.Library import SpiceLibrary
from PySpice.Spice.Netlist import Circuit
from PySpice.Unit import *

# See page 5 of this PDF for measured hub data:
# http://www.enhydralutris.de/Fahrrad/Modellierung_eines_Nabendynamos__Mathias_Magdowski_.pdf
Vf = 91@u_Hz # ~ 30 mph, according to table on page 5.
Vp = 40@u_V  # ~ 30 mph, according to table on page 5.

# These three parameters define the values for the reactive and passive
# components used to model the Novatech EDH-1 dynamo hub.  The these values can
# be found on page 9 of the PDF.
Lh = 108@u_mH  # Internal hub inductance
Rh = 0.5*7.4@u_Ω  # Internal hub resistance, halved to compensate for 10 years
                  # of innovation.
Rhp = 2*76.6@u_Ω  # Internal hub resistance (parasitic), doubled to compensate
                  # for 10 years of innovation.

# Load model
Pl = -1@u_W  # constant power sink value.  Use -1W for one red LED at full power.
C = 200@u_uF  # input capacitor

# You need to clone the PySpice git repo somewhere and set the
# PYSPICE_EXAMPLES_PATH environment variable to the examples subdirectory.
# TODO: just import a diode model for the diodes we actually intend on using,
# e.g. schottky.
pyspice_examples_libraries_path = os.path.join(os.environ['PYSPICE_EXAMPLES_PATH'], 'libraries')
pyspice_examples_spice_library = SpiceLibrary(pyspice_examples_libraries_path)

# My own custom spice libraries, already next to this script.
custom_libraries_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'libraries')
custom_spice_library = SpiceLibrary(custom_libraries_path)

circuit = Circuit('dynamo hub LED driver')
circuit.include(pyspice_examples_spice_library['1N4148']) # standard diode
circuit.include(custom_spice_library['CONSTANT_POWER_LOAD'])  # models a switching regulator

# Hub dynamo model
source = circuit.Sinusoidal('input', 'in', circuit.gnd, amplitude=Vp, frequency=Vf)
circuit.L('L_hub', 'in', 'L_hub_out', Lh)
circuit.R('R_hub', 'L_hub_out', 'bridge_in_plus', Rh)
circuit.R('R_hub_parasitic', 'L_hub_out', circuit.gnd, Rhp)

# bridge rectifier
circuit.X('D1', '1N4148', 'bridge_in_plus', 'output_plus')
circuit.X('D2', '1N4148', 'output_minus', circuit.gnd)
circuit.X('D3', '1N4148', circuit.gnd, 'output_plus')
circuit.X('D4', '1N4148', 'output_minus', 'bridge_in_plus')

# load and filter cap
circuit.X('load', 'CONSTANT_POWER_LOAD', 'output_plus', 'output_minus', P=Pl)
circuit.C('1', 'output_plus', 'output_minus', C, initial_condition=10@u_V)

simulator = circuit.simulator(temperature=25, nominal_temperature=25)
analysis = simulator.transient(step_time=source.period/2000, end_time=source.period*20, use_initial_condition=True)

axe = plt.subplot(111)
plt.title('Dynamo Hub LED Driver\nRegulator Modeled As Constant Power Load')
plt.xlabel('Time [s]')
plt.ylabel('Voltage [V]')
plt.grid()

plot(analysis['in'], axis=axe)
plot(analysis.output_plus - analysis.output_minus, axis=axe, linewidth=2.0)

plt.legend(
    (
        'Internal Hub Voltage Source',
        'Voltage Across Regulator Input',
    ),
    loc='best'
)
plt.ylim(float(-source.amplitude*1.1), float(source.amplitude*1.1))
plt.tight_layout()
plt.show()

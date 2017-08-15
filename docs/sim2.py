import os

import matplotlib.pyplot as plt

import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging()

from PySpice.Probe.Plot import plot
from PySpice.Spice.Library import SpiceLibrary
from PySpice.Spice.Netlist import Circuit
from PySpice.Unit import *

Vf = 91 # 91Hz ~ 30 mi/h
Vp = 40
Pl = 2.6  # (watts) power sink as an equivalent circuit.
Lh = 0.108  # internal hub inductance
Rh = 7.4    # internal hub resistance
C = 0.002  # input capacitor
Ven = 3  # minimum voltage above which the LED driver draws power

# diode characteristics:
IS = 10**(-12)  # A
VT = 0.026  # mV
n = 1.5  # apparently somewhere between 1 and 2 for silicon diodes

pyspice_examples_libraries_path = os.path.join(os.environ['PYSPICE_EXAMPLES_PATH'], 'libraries')
pyspice_examples_spice_library = SpiceLibrary(pyspice_examples_libraries_path)

custom_libraries_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), 'libraries')
custom_spice_library = SpiceLibrary(custom_libraries_path)

circuit = Circuit('half-wave rectification')
circuit.include(pyspice_examples_spice_library['1N4148'])
circuit.include(custom_spice_library['CONSTANT_POWER_LOAD'])
source = circuit.Sinusoidal('input', 'in', circuit.gnd, amplitude=Vp, frequency=Vf)
circuit.L('L_hub', 'in', 'L_hub_out', Lh@u_H)
circuit.R('R_hub', 'L_hub_out', 'bridge_in_plus', 100@u_Ω)
circuit.X('D1', '1N4148', 'bridge_in_plus', 'output_plus')
circuit.X('load', 'CONSTANT_POWER_LOAD', 'output_plus', 'output_minus')
circuit.X('D2', '1N4148', 'output_minus', circuit.gnd)
circuit.X('D3', '1N4148', circuit.gnd, 'output_plus')
circuit.X('D4', '1N4148', 'output_minus', 'bridge_in_plus')
circuit.C('1', 'output_plus', 'output_minus', 1@u_mF, initial_condition=5@u_V)

simulator = circuit.simulator(temperature=25, nominal_temperature=25)
analysis = simulator.transient(step_time=source.period/2000, end_time=source.period*1)

axe = plt.subplot(111)
plt.title('Full-Wave Rectification with filtering')
plt.xlabel('Time [s]')
plt.ylabel('Voltage [V]')
plt.grid()
plot(analysis['in'], axis=axe)
plot(analysis.output_plus - analysis.output_minus, axis=axe)
plt.legend(('input', 'output'), loc=(.05,.1))
plt.ylim(float(-source.amplitude*1.1), float(source.amplitude*1.1))

plt.tight_layout()

plt.show()

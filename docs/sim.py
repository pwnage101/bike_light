#!/usr/bin/env python3

import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt
from pprint import pprint

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

VD = 0.7

diode_state = 0

def vh_func(t):
    return Vp * np.sin(2 * np.pi * Vf * t)

def dynamo_light_circuit(y, t):
    ih, vc = y
    vh = vh_func(t)
    #vd = n * VT * np.log((ih_zero / IS) + 1)
    #dihdt = (vh - (ih_zero * Rh) - vd - vc)/Lh

    global diode_state

    if diode_state == 0:
        dihdt = 0
    else:
        dihdt = (vh - (ih * Rh) - VD - vc)/Lh

    if diode_state == 0:
        if vh - vc >= VD:
            diode_state = 1
    else:
        if ih <= 0:
            diode_state = 0

    if diode_state == 0:
        ih_zero = 0
    else:
        ih_zero = ih
    dvcdt = ih_zero / C
    if vc >= Ven:
        dvcdt = (1/C) * (ih_zero - (Pl/vc))
    dydt = [
        dihdt,
        dvcdt,
    ]
    return dydt

# Initial Conditions
# no initial hub current, and no initial capacitor voltage
y0 = [0.0, 10.0]

# Time
t = np.linspace(0, 2.5, 50000)

# simulate
sol = odeint(dynamo_light_circuit, y0, t)

# plot
plt.plot(t, sol[:, 0], 'b', label='ih(t) - Hub Current')
plt.plot(t, sol[:, 1], 'g', label='vc(t) - Capacitor Voltage')
plt.plot(t, np.array([vh_func(x) for x in t]).T, 'r', label='vh(t) - Internal Hub Drive Voltage')
plt.legend(loc='best')
plt.xlabel('t')
plt.grid()
plt.show()

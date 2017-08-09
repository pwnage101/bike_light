#!/usr/bin/env python3

import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt

Il = 0.100
freq = 50
Vp = 25
Li = 0.108
Ri = 7.4
Cl = 0.001

def current_sink_circuit(y, t):
    Ii, omega = y
    dydt = [
        omega,
        -Ri/Li * omega - (1/(Cl * Li)) * (Ii - Il) - 2 * np.pi * freq * Vp * np.cos(2 * np.pi * freq * t)
    ]
    return dydt

# Initial Conditions
# Ii is initially equal to Il and not changing.
y0 = [Il, 0]

# Time
t = np.linspace(0, 0.3, 2001)

# simulate
sol = odeint(current_sink_circuit, y0, t)

# plot
plt.plot(t, sol[:, 0], 'b', label='Ii(t) - Hub Current')
plt.legend(loc='best')
plt.xlabel('t')
plt.grid()
plt.show()

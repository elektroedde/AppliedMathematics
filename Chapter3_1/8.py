import numpy as np
import matplotlib.pyplot as plt


x = np.linspace(0,1,100)

def qfunc(e):
    return np.where(e < 0.5, 1, 0)

y = qfunc(x)

def ck(k: int):
    return 2/(np.pi**2)*((-1)**k - 1)/(k**2)*np.cos(k*np.pi*x)

y2=1/2
for i in range(1,100):
    y2 += ck(i)*np.exp(-i**2 * np.pi**2)

plt.plot(x,y2)
plt.show()
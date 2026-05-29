import numpy as np
import matplotlib.pyplot as plt


x = np.linspace(0,1,100)

def qfunc(e):
    return np.where(e < 0.5, 1, 0)

y = qfunc(x)

def ck(k: int):
    return np.cos(k*np.pi*x)*(2*np.sin((k*np.pi)/2))/(k*np.pi)

y2=1/2
for i in range(1,10):
    y2 += ck(i)
plt.plot(x,y)
plt.plot(x,y2)
plt.show()
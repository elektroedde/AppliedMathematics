import numpy as np
import matplotlib.pyplot as plt


x = np.linspace(-2,2,100)
y = x


def cosexp(k: int):
    return 2/(np.pi**2)*((-1)**k - 1)/k**2 * np.cos(k*np.pi*x)

def sinexp(k: int):
    return 2/np.pi * ((-1)**(k+1))/k * np.sin(k*np.pi*x)
y2 = 1/2
y3 = 0

for i in range(1,100):
    y2 += cosexp(i)
plt.plot(x,y)
plt.plot(x,y2)

plt.show()
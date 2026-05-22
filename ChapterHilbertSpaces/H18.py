import numpy as np
import matplotlib.pyplot as plt


x = np.linspace(0, np.pi, 10000)
y = x

def un(n):
    return (2*(-1)**(n-1)*np.sin(n*x))/n

plt.plot(x, y)

sumoftwo = 0
sumoffive = 0
sumofmany = 0
for i in range(1, 25):
    if(i < 3): sumoftwo += un(i)
    if(i < 6): sumoffive += un(i)
    sumofmany += un(i)

plt.plot(x, sumoftwo, label="n = 2")
plt.plot(x, sumoffive, label="n = 5")
plt.plot(x, sumofmany, label="n = 20")
plt.legend()
plt.title(r"Sum of the functions $u_n = \frac{2 \sin(n x)}{n} (-1)^{n-1}$")
plt.xticks([0, np.pi/2, np.pi], ["0", r"$\frac{\pi}{2}$", r"$\pi$"])
plt.yticks([0, np.pi/2, np.pi], ["0", r"$\frac{\pi}{2}$", r"$\pi$"])

plt.savefig("ChapterHilbertSpaces/H18.png")
plt.show()


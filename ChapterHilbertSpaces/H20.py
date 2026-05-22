import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 1, 1000)
a = 1/6
b = 2/63
c = 1/280

def psi0(x): 
    return 2

def psi1(x):
    return 36*x - 24

def psi2(x):
    return 600*x**2 - 720*x + 180

y = x**4
y2 = 8*x/7 - 3/7

y3 = a*psi0(x) + b*psi1(x) + c*psi2(x)
plt.plot(x, y, label=r"$u(x) = x^4$")
plt.plot(x, y2, label=r"$\frac{8}{7}x - \frac{3}{7}$")


plt.legend()
plt.savefig("ChapterHilbertSpaces/H20a.png")

plt.show()

plt.plot(x, y, label=r"$u(x) = x^4$")

plt.plot(x, y3, label=r"$\frac{15}{7}x^2 - \frac{10}{7}x + \frac{3}{14}$")
plt.legend()
plt.savefig("ChapterHilbertSpaces/H20b.png")
plt.show()
#import "../template.typ": *

= 3B.35
Determine the modes and eigenfrequencies for sound waves in an exponential horn described by letting 
$
  y = k e^(a x)", " 0 <= x <= L
$
rotate about the x-axis. The horn is open in both ends. The wave equation for a variable area is given by
$
  dvp(u,t,deg:2) - v^2 1/(A(x)) dvp(,x) (A(x) dvp(u,x)) = 0
$
#solution[
The area of the horn is 
$
  A(x) = pi y^2 = pi k^2 e^(2 a x)
$
The differential equation can be described by a linear Sturm-Liouville operator 
$
  cal(A) = -1/(A(x))dvp(,x)(A(x)dvp(phi,x))\
  D_(cal(A)) = {phi in cal(C)^2[0,L] | phi(0) = phi(L) = 0}
$
Find eigenvalues and eigenfunctions to the operator
$
  cal(A) phi = lambda phi arrow -1/(A(x))dvp(,x)(A(x)dvp(phi,x)) = lambda phi(x)\
  arrow.b\
  -1/(A(x))[A'(x) phi'(x) + A(x) phi''(x)] = lambda phi(x)\
  arrow.b\
  -2a phi'(x) - phi''(x) = lambda phi(x) arrow phi''(x) + 2a phi'(x) + lambda phi(x)
$
This gives the characteristic equation
$
  r^2 + 2a r + lambda = 0 arrow r = -a plus.minus sqrt(a^2 - lambda)
$

This gives three cases for the square root:
$
  cases("(1): "a^2 - lambda > 0,"(2): "a^2 - lambda = 0, "(3): "a^2 - lambda < 0)
$
For the first case:
$
  "(1):" r = -a plus.minus  sqrt(a^2 - lambda) \
  arrow.b\
  phi(x) = c_1 e^((-a + sqrt(a^2 - lambda))x) + c_2 e^((-a - sqrt(a^2 - lambda))x)\
  phi(0) = c_1 + c_2 = 0 arrow c_1 = -c_2\
  phi(L) =  c_1 e^((-a + sqrt(a^2 - lambda))L) -c_1 e^((-a - sqrt(a^2 - lambda))L) arrow e^(-sqrt(a^2 - lambda) )-e^(sqrt(a^2 - lambda)) = 0\
$
This is not possible, hence $c_1 = c_2 = 0$ and this corresponds to no eigenvalues or eigenfunctions.

Case 2:
$
  "(2):" r = -a  \
  arrow.b\
  phi(x) = (c_1 + c_2 x)e^(-a x)\
  phi(0) = c_1 = 0 arrow c_1 = 0\
  phi(L) = c_2 L e^(-a L) = 0 arrow c_2 = 0
$
This also gives no non-trivial solution as both $c_1$ and $c_2$ are zero.

Case 3:
$
  "(3):" r = -a plus.minus i sqrt(lambda_k - a^2 ) = -a plus.minus i omega_k", with" omega_k = sqrt(lambda_k - a^2)  \
  arrow.b\
  phi(x) = e^(-a x)(A cos(omega_k x) + B sin(omega_k x))\
  phi(0) = A cos(omega_k 0) arrow A = 0\
  phi(L) = e^(-a L) sin(omega_k L) = 0 arrow omega_k L = sqrt(lambda_k - a^2) = k pi
$
This gives the eigenvalues and eigenfunctions
$
&lambda_k = (k^2 pi^2)/L^2 + a^2 \
&phi_k (x) = e^(-a x)sin((k pi x)/L)", " k = 1,2,3dots
$
k cannot be zero because $lambda "has to be larger than" a^2$, and $k = 0$ gives $lambda_0 = a^2 $.

]

#import "../template.typ": *

= 4.6
Solve the problem
$
  &dvp(u,t,deg:2) - dvp(u,x,deg:2) = 0"," && t>0, x in RR\
  &u(x,0) = 0, dvp(u,t)(x,0) = delta(x)",  " &&x in RR
$
#solution[
  === Partial Fourier Transform:
Partial Fourier transform gives
$
  dvp(hat(u),t,deg:2)(xi,t) + xi^2 hat(u)(xi,t) = 0\
  hat(u)(xi, t) =A(xi) cos(xi t) + B(xi) sin(xi t)
$
To determine $A(xi) "and" B(xi)$, we set $t=0$.
$
  hat(u)(xi, 0) = infint u(x,0)e^(-i x xi) dif x = 0 arrow A(xi) = 0\
  dvp(hat(u),t)(xi,0) = infint dvp(u,t)(x,0)e^(-i x xi) dif x = infint delta(x) e^(-i x xi) dif x = 1\
  dvp(hat(u),t)(xi,0) = xi B(xi) cos(xi dot 0) = xi B(xi) = 1 arrow B(xi) = 1/xi
$
We get our $hat(u)(xi,t)$ as 
$
  hat(u)(xi,t) = sin(xi t)/xi
$
which has the inverse Fourier transform
$
  fourierinv(sin(xi t)/xi) = 1/2 (theta(x+t)-theta(x-t))
$

=== Partial Laplace Transform:
We can also solve it using the partial Laplace transform, which might be more convenient for wave equations. We set 
$
  U = infint u(x,t) e^(-s t) dif x
$
as the Laplace transform. Laplace transforming the differential equation in $x$ gives
$
  infint dvp(u, t, deg:2) e^(-s x) dif x - infint dvp(u, x, deg:2)e^(-s x) dif x = 0\
  arrow.b\
  dvp(U, t, deg:2) - s^2 U = 0\
  arrow.b\
  U(s,t) = A(s)e^(s t) + B(s)e^(-s t)
$
To determine the constants $A(s) "and" B(s)$, we set $t=0$
$
  U(s,0) = A(s) + B(s) = infint u(x, 0) e^(-s x) dif x = 0 arrow ans(A(s) = -B(s))\
  dvp(U, t)(s,0) = s A(s) - s B(s) = infint dvp(u,t)(x,0)e^(-s x)dif x = infint delta(x)e^(-s x)dif x = 1\
  arrow.b\
  s A(s) - s B(s) = 1 arrow 2s A(s) = 1 arrow ans(A(s) = 1/(2s)"," B(s) = -1/(2s))\
  arrow.b\
  U(s,t) = 1/(2s)(e^(s t) - e^(-s t))
$
Now all that's left to do is find the inverse Laplace transform of $U(s,t)$:
$
  laplace(theta(x)) = 1/s\
  laplace(theta(x-a)) = 1/s e^(-a s)\
  ans(laplace(1/2(theta(x+t)-theta(x-t))) = 1/(2s)(e^(s t) - e^(-s t))\
  arrow.b\
  u(x,t) = 1/2[theta(x+t)-theta(x-t)])
$
]

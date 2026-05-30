#import "../template.typ": *

= 4.5
Find a solution to the Schrödingerequation
$
  dvp(psi, t) - i dvp(psi, x,deg:2) = 0", " t>0, x in RR
$
that satisfy the initial value
$
  psi(x,0) = sin^2(x)", " x in RR
$
#solution[
We will partial Fourier transform the differential equation, which results in
$
  infint dvp(psi,t)e^(-i x xi)dif x +i xi^2 infint psi e^(-i x xi) dif x = 0\
  arrow.b\
  dvp(hat(psi),t)(xi,t) + i xi^2 hat(psi)(xi,t) = 0\
  arrow.b\
  hat(psi)(xi, t) = c(xi)e^(- i xi^2 t)
$
To determine $c(xi)$, we set $t=0$ and get
$
  hat(psi)(xi,0)=c(xi) = infint u(x,0)e^(-i x xi) dif x = infint sin^2(x)e^(-i x xi)dif x =\
  = infint ((e^(i x) - e^(-i x))/(2 i))^2 e^(-i x xi) dif x = -1/4 infint (e^(2i x) - 2 + e^(-2 i x))e^(-i x xi) dif x\
  arrow.b\
  c(xi) = -1/4 fourier(e^(2i x) - 2 + e^(-2 i x)) = -1/4 [2 pi delta(xi-2) - 4pi delta(xi) + 2pi delta(xi+2)] =\
  arrow ans(c(xi) = pi/2 [2 delta(xi) - delta(xi-2) - delta(xi+2)])
$
This gives our $hat(psi)(xi,t)$
$
  hat(psi)(xi,t) = pi/2 [2 delta(xi) - delta(xi-2) - delta(xi+2)]e^(-i xi^2 t) =\
  = pi delta(xi)-pi/2 e^(-4i t)delta(xi-2)-pi/2 e^(-4i t)delta(xi+2)
$
and our solution $psi(x,t)$ is the inverse Fourier transform of $hat(psi)(xi,t)$

$
  fourier(1/2 -1/4 e^(- 4 i t)e^(2i x) - 1/4 e^(- 4 i t)e^(-2i x)) = pi delta(xi)-pi/2 e^(-4i t)delta(xi-2)-pi/2 e^(-4i t)delta(xi+2)
$

So our solution that satisfy the initial conditions is
$
  psi(x,t) = 1/2 -1/4 e^(- 4 i t)e^(2i x) - 1/4 e^(- 4 i t)e^(-2i x) = 1/2(1 - e^(-4 i t)[(e^(2 i x) + e^(-2 i x))/2]) \
  arrow.b\
  ans(psi(x,t) = 1/2(1-e^(-4i t)cos(2x)))
$
]

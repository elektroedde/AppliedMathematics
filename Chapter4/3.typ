#import "../template.typ": *

= 4.3
Solve the heat problem
$
  &dvp(u,t) - a dvp(u,x,deg:2) = -alpha u",      " &&t>0, x in RR\
  &u(x,0) = delta(x)"," &&x in RR\
  &u(x,t) arrow 0, x arrow plus.minus infinity","&&t>0
$
#solution[
This problem describes a heat problem where there is a sudden impulse of heat at $x=0, t=0$.
Partial Fourier transforming gives
$
  infint dvp(u,t)e^(-i x xi)dif x - a infint dvp(u,x,deg:2)e^(-i x xi)dif x + alpha infint u e^(-i x xi)dif x\
  arrow.b\
  dvp(hat(u),t)(xi,t) + a xi^2 hat(u)(xi, t) + alpha hat(u)(xi,t) = 0\
  arrow.b\
  dvp(hat(u),t)(xi,t) + (a xi^2 + alpha) hat(u)(xi, t) = 0\
  arrow.b\
  hat(u)(xi,t) = c(xi)e^(-(a xi^2 + alpha)t)
$
To determine $c(xi)$, set $t=0$ in $hat(u)(xi,t)$
$
  hat(u)(xi, 0) = infint u(x,0)e^(-i x xi)dif x = infint delta(x) e^(-i x xi)dif x = 1 
$
This means
$
  hat(u)(xi,t) = e^(-(a xi^2 + alpha)t) = e^(-a xi^2 t) e^(-alpha t)
$
Now $u(x,t)$ is given by the inverse transform of this
$
  fourier(e^(-x^2)) = sqrt(pi)e^(-xi^2/4)\
  fourier(e^(-alpha t)/sqrt(pi)e^(-x^2)) = e^(-xi^2/4)e^(-alpha t)\
  fourier(e^(-alpha t)/(2 sqrt(pi a t) )e^(-(x/(2sqrt(a)))^2)) =  e^(-(xi 2 sqrt(a t))^2/4)e^(-alpha t)\
$
Final answer
$
  ans(u(x,t) = e^(-alpha t)/( sqrt(4 pi a t) )e^(-x^2/(4 a t)))
$
]

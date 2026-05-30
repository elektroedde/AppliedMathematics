#import "../template.typ": *

= 4.1
Solve the heat conduction problem
$
  &dvp(u, t) - dvp(u,x,deg:2) = 0",  " && t>0, x in RR\
  &u(x,0) = e^(-x^2)"," && x in RR
$
#solution[
The solution will take the form
$
  u(x,t) = integral_RR T(xi, t)e^(i x xi) dif xi
$
We have the relation
$
  2 pi T(xi, t) = (cal(F)_x u)(xi, t) = infint u(x, t) e^(-i x xi) dif x
$
where $cal(F)_x u$ is the partial Fourier transform of $u$ in $x.$ $u(x,0) = e^(-x^2)$ is bounded. Taking the partial Fourier transform of the differential equation yields
#neq($
  infint dvp(u,t) e^(- i x xi) dif x - infint dvp(u,x,deg:2)e^(-i x xi) dif x = 0
$) <et>
We now assume it's possible to swap integration and derivation
$
  infint dvp(u,t)e^(-i x xi) dif x = dvp(,t) infint u(x,t)e^(-i x xi) dif x = dvp(hat(u),t)(xi, t)
$
where
$
  hat(u)(xi,t) = cal(F)_x u(xi, t) = infint u(x,t)e^(-i x xi) dif x
$
Since the partial Fourier transform is done in $x$, the second term in @et can be rewritten with the Fourier transform rule for derivatives
$
  infint dvp(u,x,deg:2) e^(-i x xi)dif x = - xi^2 infint u(x,t)e^(-i x xi) dif x = -xi^2 hat(u)(xi,t)
$

Putting this into the differential equation gives
$
  cal(F)_x (dvp(u,t) -  dvp(u,x,deg:2)) =dvp(hat(u),t)(xi, t) +  xi^2 hat(u)(xi, t) = 0
$
This has the general solution
$
  hat(u)(xi, t) = c(xi)e^(- xi^2 t)
$
To determine $c(xi)$, we set $t=0$
$
  c(xi) = hat(u)(xi, 0) = infint u(x,0)e^(-i x xi) dif x = infint e^(-x^2) e^(-i x xi) dif x =\
  = fourier(e^(-x^2))(xi) = sqrt(pi)e^(-xi^2/4)
$
This gives
$
  hat(u)(xi,t) = sqrt(pi)e^(-xi^2(t+1/4) = sqrt(pi)e^(-xi^2( t + 1/4))
$
To get the solution we need to inverse transform this
$
  fourier(e^(-x^2)) = sqrt(pi)e^(-xi^2/4)\
  fourier(e^(-(a x)^2)) = 1/abs(a) sqrt(pi)e^(-(xi/a)^2/4)
$
From this we see we want 
$t+1/4 = 1/(4 a^2) arrow a = sqrt(1/(4(t+1/4))) arrow 1/a = sqrt(4t + 1)$. With this, we get
$
  fourier(1/(sqrt(4t+1))e^(-(x/sqrt(4t+1))^2)) = sqrt(pi)e^(-xi^2(t + 1/4)) \
  arrow.b\
  ans(u(x,t) = 1/sqrt(4t + 1) e^(-(x/sqrt(4t+1))^2))
$

]

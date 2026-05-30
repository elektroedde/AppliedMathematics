#import "../template.typ": *

= H.13
Let $u, v$ in $L_2(0,1)$ be given by
$
  u(x) = 1 cm 0 <= x <= 1,\
  v(x) = x cm 0 <= x <= 1 .
$
Calculate the projection of $v$ onto $u$, and the projection of $u$ onto $v$.
#solution[
Using the projection formula, the projection of $v$ onto $u$ is
$
  projection(u, v) = projectionfull(u,v) = (integral_0^1 x dif x ) / (integral_0^1 dif x) 1 = 1/2
$
and the projection of $u$ onto $v$ is
$
  projection(v, u) = projectionfull(v, u) = (integral_0^1 x dif x)/(integral_0^1 x^2 dif x) x = 3/2 x
$
]

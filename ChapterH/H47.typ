#import "../template.typ": *

= H.47
Show with the help of the definition that
$
  cal(A) = -dv(,x, deg:2) cm D_cal(A) = {u in cal(C)^2[0,1] | u'(0) = u(1) = 0}
$
is a symmetric positive semidefinite operator on $L_2[0,1]$. Determine its eigenvalues and eigenvectors.
#solution[
  Symmetric:
$
  innerp(u, cal(A)v) = -integral_0^1 overline(u) v'' dif x = -underbrace([overline(u)v']_0^1,=0) + integral_0^1 overline(u')v' dif x =\
  "(*)"= integral_0^1 overline(u')v' dif x = underbrace([overline(u')v]_0^1,=0) - integral_0^1 overline(u'')v dif x = innerp(cal(A) u, v)
$
Positive semidefinite, start from (\*) and set $u  = v$:
$
  "(*)" = integral_0^1 overline(u') u' dif x = integral_0^1 abs(u')^2 dif x >= 0
$
Eigenvalues and eigenvectors:
$
  cal(A) u = lambda u arrow -u'' - lambda u = 0\
  arrow.b\
  u'' + lambda u arrow u(x) = A cos(sqrt(lambda)x)+B sin(sqrt(lambda)x)\
  \
  u'(0) = - sqrt(lambda) A sin(sqrt(lambda)dot 0) + sqrt(lambda) B cos(sqrt(lambda)dot 0) = 0 arrow B = 0\
  \
  u(1) = A cos(sqrt(lambda) dot 1) = 0 arrow sqrt(lambda) = pi/2 + k pi \
  arrow.b\
  lambda_k = pi^2/4 +k^2 pi^2 + k pi^2 \
  phi_k (x) = cos(sqrt(lambda)x)
$
]

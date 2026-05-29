#import "../template.typ": *

= D.22
#solution[
Definition of the cosine series expansion for distributions
$
  U =c_0/2 + sum_(k=1)^infinity c_k cos((k pi x)/L)",  " 0 < x < L\
  c_k = 2/L integr(0, L, U(x) cos((k pi x)/L), x)
$
We will also use the expansion of $f(x)delta'(x) = f(0)delta'(x) - f'(0)delta(x)$.

This gives ($k != 0$)
$
  c_k = 2/pi integr(0, pi, delta'(x-pi/2) cos(k x), x) = 2/pi integr(0, pi, cos(k pi/2)delta'(x-pi/2)+k sin(k pi/2)delta(x-pi/2), x) =\
  = 2/pi integr(0, pi, k sin((k pi)/2), x) =2/pi k sin((k pi)/2)
$
and for $k = 0$:
$
  c_0 = 2/pi integr(0, pi, delta'(x-pi/2), x) = 2/pi [delta(x-pi/2)]_0^pi = 0
$

$
  ans(delta'(x-pi/2) = 2/pi sum_(k=1)^infinity k sin((k pi)/2)cos(k x))
$
]
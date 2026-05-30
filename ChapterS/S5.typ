#import "../template.typ": *

= S.5
Solve the Abelian integral
$
  integral_0^x (u(y))/sqrt(x - y) dif y = 1",  " x > 0
$
#solution[
$
  Gamma(1/2)/s^(1/2) U(s) = F(s)\
  arrow.b\
  Gamma(1/2)/s^(1/2) U(s) = 1/s\
  arrow.b\
  U(s) = 1/(Gamma(1/2) s^(1/2)) = 1/(Gamma(1/2)^2) Gamma(1/2)/s^(1/2) arrow^(cal(L)^(-1)) u(x) theta(x) = 1/pi x^(-1/2) theta(x)\
  arrow.b\
  ans(u(x) = 1/(pi sqrt(x)) ",  " x > 0)

$
]

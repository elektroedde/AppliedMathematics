#import "../template.typ": *

= 3.2
Determine the coefficients in the following expansions

(a) 
$
  x = sum_0^infinity alpha_k cos(k pi x)", " 0 < x < 1
$

(b) 
$
  x = sum_1^infinity alpha_k sin(k pi x)", " 0 < x < 1
$
#solution[
(a) 
$
  alpha_k = 2 integral_0^1 x cos(k pi x) dif x = 2underbrace([(-x sin(k pi x))/(k pi)]_0^1,=0) + 2integral_0^1 (sin(k pi x))/(k pi) dif x = \
  = 2/(k pi) integral_0^1 sin(k pi x) dif x = 2/(k pi)[cos(k pi x)/(k pi)]_0^1 = (2 cos(k pi))/(k^2 pi^2) - 2/(k^2 pi^2) = \
  = 2/(k^2 pi^2)(cos(k pi) - 1) = 2/(k^2 pi^2)((-1)^k - 1)\
  \
  alpha_0 =integral_0^1 x dif x = 1/2
  \
  \
  alpha_k = 2/(k^2 pi^2)((-1)^k - 1) \
  arrow.b \
  x = 1/2 + 2/pi^2 sum_0^infinity ((-1)^k - 1)/k^2 cos(k pi x)
$

(b)
$
  beta_k = 2 integral_0^1 x sin(k pi x) dif x = 2[(x cos(k pi x))/(k pi)]_0^1 - 2 underbrace(integral_0^1 cos(k pi x)/(k pi) dif x, = 0) =\
  = (2 cos(k pi))/(k pi)
  \
  beta_0 = integral x sin(0 pi x) dif x = 0\
  arrow.b\
  x = 2/pi sum_1^infinity (-1)^(k+1)/k sin(k pi x)
$
]

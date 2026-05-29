#import "../template.typ": *

= D.18

(a) $delta convolve e^(-x^2)$

(b) $delta' convolve (e^(-x)theta(x))$

(c) $delta_1 convolve sin(2x)$
#solution[
Using the definition of the convolution
$
  phi convolve U = integral phi(x-y) U(y) dif
$

(a)
$
  integral e^(-(x-y)^2) delta(y) dif y = ans(e^(-x^2))
$

(b)
$
  integral e^(-(x-y))theta(x-y)delta'(y)dif y = [e^(y-x)theta(x-y)delta(y)]_(-infinity)^infinity - integral (e^(y-x)theta(x-y))' delta(y) dif y =\
  = (e^(-x)theta(x))' = -e^(-x)theta(x) + e^(-x)delta(x) = ans(delta(x) - e^(-x)theta(x))
$

(c) 
$
  integral sin(2(x-y))delta(y-1) dif y = ans(sin(2x-2))
$
]
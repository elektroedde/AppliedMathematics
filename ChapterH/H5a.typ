#import "../template.typ": *

= H.5a
Motivate why the expression
$
  < f | g > = integral_0^1 f^2 (x) g^2 (x) dif x 
$

is not a scalar product for real, continuous functions on the interval $[0,1]$

#solution[
The scalar product needs to be linear, which this expression is not. For example
$
  < lambda f | mu g > = integral_0^1 lambda^2 f^2 (x) mu^2 g^2 (x) dif x\
$
but linearity is
$
   lambda mu <f | g > = lambda mu integral_0^1 f^2 (x) g^2 (x) dif x
$

]

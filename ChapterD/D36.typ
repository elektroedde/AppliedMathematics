#import "../template.typ": *

= D.36

(a) $delta(t-1)$

(b) $delta'(t+2)$

(c) $2$

(d) $sin(2t)$

(e) $(t+1)^2$

(f) $e^t theta(t)$
#solution[
$
  &laplace(delta(t)) = 1\
  &laplace(f(t-t_0)) = e^(-t_0 s)laplace(f(t)) \
  &laplace(f'(t)) = s laplace(f(t))\
  &laplace(e^(a t)f(t)) = laplace(f(t-a))\
  &laplace(theta(t)) = 1/s

$

(a)
$
  laplace(delta(t-1)) = e^(-s)
$

(b) 
$
  laplace(delta'(t+1)) = s e^(2s)
$

(c) Not possible

(d) Not possible

(e) Not possible
$
  laplace((t+1)^2)= laplace(t^2 + 2t + 1)
$

(f) 
$
  laplace(e^t theta(t)) = 1/(s-1)",  " "Re" s > 0
$


]
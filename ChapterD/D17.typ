#import "../template.typ": *

= D.17

(a) $theta(-2x+1)$

(b) $delta(2x)$

(c) $delta(-2x+1)$

(d) $delta'(2x)$


#solution[
(a) 
$
  theta(-2x+1) = cases(1", " &-2x+1>0 arrow x < 1/2, 0", " & -2x+1 <0 arrow x > 1/2)\
  arrow.b\
  theta(-2x+1) = theta(-2(x-1/2)) = 1 - theta(x-1/2)= ans(1 - theta_(1/2)(x))
$

(b) Scaling rule gives
$
  ans(delta(2x) = 1/2 delta(x))
$

(c) 
$
  delta(-x) = delta(x), delta(a x) = 1/abs(a) delta(x)\
  arrow.b\
  delta(-2x+1) = delta(-2(x-1/2)) = 1/2 delta(x-1/2)= ans(1/2 delta_(1/2)(x))
$

(d) 
$
  delta'(a x) = 1/(a abs(a))delta'(x)\
  arrow.b\
  ans(delta'(2x) = 1/4 delta'(x))
$
]
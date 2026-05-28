#import "../template.typ": *

= 
Determine all distribution solution to

(a) $x U = 0$

(b) $(x-1)U = 0$

(c) $(e^x-2)U = 0$

(d) $(x^2-1)U = 0$

(e) $sin(x)U = 0$

(f) $x^3 U = 0$


#solution[
(a)
$
  U = delta(x) arrow x delta(x) = 0 arrow ans(U = c delta(x)", " c ="constant")
$

(b) Same as in (a) but $delta(x-1)$
$
  ans(U = c delta(x-1))
$

(c) We can try to set $U "as" delta(x-a)$ to make $(e^x - 2) = 0 arrow e^x = 2 arrow x =ln(2)$
$
  ans(U = c delta(x-ln(2)))
$

(d) Same idea as above, but here we have two roots, $x=1, x=-1$
$
  ans(U = c_1 delta(x-1) + c_2 delta(x+1))
$

(e) Can use $U = delta(x-a)$ again to make $sin(x) = 0$
$
  ans(U = c_k delta(x-k pi) = sum_(k=-infinity)^infinity c_k delta(x-k pi))
$

(f) Triple root at $x=0$, use the relation $x^k U = 0 arrow U = sum_(k=0)^(n-1) c_k delta^(k)(x)$
$
  ans(U = c_0 delta(x) + c_1 delta'(x) + c_2 delta''(x))
$
]
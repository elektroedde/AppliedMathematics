#import "../template.typ": *

= H.8 Operators in Hilbert Spaces
Linear avbildning
$
  cal(A) : cal(H)_1 arrow cal(H)_2
$
where $cal(H)_1$ and $cal(H)_2$ are two pre-Hilbert Spaces. Linearity: 
$
  cal(A)(lambda u + mu v) = lambda cal(A) u + mu cal(A) v
$
is termed a *linear operator*.

== Example H.19
Let $I$ be a compact interval on $RR$, and let $K(x,y)$ be continuous for $x, y in I$. 
$
  v(x) = integral_I K(x, y)u(y) dif y
$
This defines an *integral operator* 
$
  cal(K):L_2(I) arrow L_2(I)
$
The function $K(x,y)$ is termed the operators *kernel*
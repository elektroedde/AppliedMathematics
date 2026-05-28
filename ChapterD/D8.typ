#import "../template.typ": *

=

(a) Calculate the derivative of $x^2 theta(x-1)$

(b) Determine all primitive distributions for $x theta(x-1)$ 
#solution[
(a)
$
  (x^2 theta(x-1))' = 2x theta(x-1) + x^2 theta'(x-1) = 2x theta(x-1) + delta(x-1)
$

(b) Try to compensate for the $delta(x-1)$ in (a) by $x^2 arrow x^2 - 1$:
$
  ((x^2-1)theta(x-1))' = 2x theta(x-1) + (x^2-1)delta(x-1) = 2x theta(x-1)
$
Now compensate with a factor 2 and we get the solution
$
  ans(((x^2-1)/2)theta(x-1) + C)
$
]
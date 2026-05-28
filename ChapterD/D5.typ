#import "../template.typ": *

=
Simplify

(a) $e^x delta_1$

(b) $x delta'$

(c) $cos(x)delta'$

(d) $x^2 delta''$

(e) $integral g(t)delta(t-1)dif t$

#solution[
  (a) 
  $
    e^x delta_1 = e^x delta_1 = ans(e delta_1)
  $

  (b) Using $g(x)delta'(x) = g(0)delta'(x)-g'(0)delta(x)$
  $
    x delta' = ans(-delta)
  $

  (c) Using $g(x)delta'(x) = g(0)delta'(x)-g'(0)delta(x)$:
  $
    cos(x)delta' = cos(0)delta'+sin(0)delta = ans(delta')
  $

  (d) Using $g(x)delta''(x) = g(0)delta''(x) - 2g'(0)delta'(x) + g''(0)delta(x)$:
  $
    x^2 delta'' = ans(2delta)
  $

  (c) Using $integral g(x) delta(x-a) dif x = g(a)$:
  $
    integral g(t) delta(t-1) dif t = ans(g(1))
  $
]

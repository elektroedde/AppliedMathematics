#import "../template.typ": *

=
Show that 

(a) $g(x) delta'(x) = g(0)delta'(x)-g'(0)delta(x)$

(b) $g(x)delta''(x) = g(0)delta''(x) - 2g'(0)delta'(x) + g''(0)delta(x)$

#solution[
  (a) Here we use $g(x)delta(x) = g(0)delta(x)$, and start by differentiating the expression $(g(x)delta(x))$:
  $
    (g(x)delta(x))' = g'(x)delta(x) + g(x)delta'(x)\
    arrow.b\
    g(x)delta'(x) = (g(x)delta(x))' - g'(x)delta(x) =\
    = (g(0)delta(x))' - g'(0)delta(x) = ans(g(0)delta'(x) - g'(0)delta(x))
  $

  (b) Using the result from (a) and differentiating $(g(x)delta'(x))$:
  $
    (g(x)delta'(x))' = g'(x)delta'(x) + g(x)delta''(x)\
    arrow.b\
    g(x)delta''(x) = (g(x)delta'(x))' - g'(x)delta'(x) =\
    = (g(0)delta'(x)-g'(0)delta(x))' - g'(x)delta'(x) =\
    =g(0)delta''(x)-g'(0)delta'(x) - g'(0)delta'(x)+g''(0)delta(x) = \
    = ans(g(0)delta''(x) - 2g'(0)delta'(x) + g''(0)delta(x))
   
  $
]
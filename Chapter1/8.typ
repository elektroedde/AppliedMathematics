#import "../template.typ": *

= 1.8
Let $u(x,y)$ be the temperature in a plate $Omega$.

(a) How do you formulate a mathematical heat conduction problem with homogenous Neumann boundary conditions?

(b) What physical phenomenon gives rise to homogenous Neumann boundary conditions? Motivate.

In the figures below, the solutions to the problem is shown. Along some boundaries there are homogenous Neumann conditions, and along some there are homogenous Dirichlet conditions.

(c) Left figure shows the vector field, $nabla u$. Along which parts of the boundary is there homogenous Neumann conditions?

(d) Right figure shows the isotherms ($u =$ constant). Along which parts of the boundary is there homogenous Neumann conditions?
#solution[
(a)
$
  &1/a dvp(u,t) - dvp(u,x,deg:2)-dvp(u,y,deg:2) = f\
  &dvp(u,x) = 0", on some boundary"\
  &dvp(u,y) = 0", on some boundary"
$

(b) Heat flux on boundary

(c) Top, top right, bottom left.

(d) Left, bottom and top right.
]

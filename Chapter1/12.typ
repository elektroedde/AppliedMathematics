#import "../template.typ": *

= 1.12
A wide and tall wall with thickness $L$ starts with temperature $T_0$, same as surroundings. At time $t=0$ the temperature on one side changes to $T_1$. At the boundaries on the wall the coefficients are $alpha_0$ and $alpha_1$. Determine the differential equation, initial values and boundary conditions.
#solution[
$
  dvp(u,t) - dvp(u,x,deg:2) = 0\
  u(L, t) = T_0 \
  dvp(u(0,t),x) = alpha_0(u(0,t)-T_1)\
  dvp(u(L,t),x) = -alpha_1(u(L,t)-T_0)
$
]

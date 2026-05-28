#import "../template.typ": *

= 
String with length L and a point mass at $x=a$

#solution[
  $
    &dvp(u, t, deg:2) - c^2 dvp(u, x, deg:2) = - (m_0 g)/rho delta(x-a)",  " &&0 < x < L, t > 0 \
    &u(0,t) = u(L, t) = 0",  " &&t > 0 \
    &u(x,t) = g(x)"," dvp(u(x,0), t) = h(x)"," && 0 < x < L
  $
]
#import "../template.typ": *

= H.39
A linear operator $cal(A)$ on $cal(H)$ is said to be unitary if it is bijective and 
$
  innerp(cal(A) u, cal(A) v) = innerp(u,v)
$
for all $u,v in D_cal(A)$. Show that every eigenvalue to a unitary operator has magnitude one.
#solution[
$
  cal(A) u = lambda u cm cal(A) v = lambda v\
  arrow.b\
innerp(cal(A) u, cal(A) v) = innerp(lambda u, lambda v) = overline(lambda)lambda innerp(u, v) = |lambda|^2 innerp(u,v) = innerp(u,v)\
arrow.b\
|lambda|^2 = 1
$
]

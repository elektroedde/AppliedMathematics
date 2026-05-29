#import "../template.typ": *

= 1.5
Determine a differential equation for transversal vertical oscillations of a long horizontal string

(a) under the influence of gravity,

(b) if the surrounding medium additionally exerts a resistance proportional to the velocity.
#solution[
The wave equation is
$
  dvp(u,t,deg:2)-c^2 dvp(u,x,deg:2) = f
$

(a) Here, $f$ is simply the gravitational force $F=m g$

$
  dvp(u,t,deg:2)-c^2 dvp(u,x,deg:2) = - (m g)/rho_l
$
where $rho_l$ is the length density.

(b) Add a proportionality factor of $dvp(u,x)$ which is the velocity

$
  dvp(u,t,deg:2)-c^2 dvp(u,x,deg:2) = - (m g)/rho_l - a dvp(u,x)
$
]

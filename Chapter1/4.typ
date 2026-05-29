#import "../template.typ": *

= 1.4
Determine a differential equation for heat conduction in a thin rod, not perfectly isolated. The heat loss at the point $x$ is proportional to the difference between the rod temperature and its surrounding temperature.
#solution[
  $
1/a dvp(u,t)- dvp(u,x,deg:2) = -c / lambda (u-T_0)
$
]

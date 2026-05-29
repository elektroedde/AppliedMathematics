#import "../template.typ": *

= 1.1
Write the differential equation for a diffusion problem where the diffusing element decays at a rate proportional to the concentration.
#solution[
The diffusion equation in one dimension is 
$
  dvp(u, t) - D dvp(u,x,deg:2) + gamma u = f
$
where $u$ is the concentration of the element and $f$ is the source. The model for this problem is 
$
  dvp(u, t) - D dvp(u,x,deg:2) = - gamma u 
$
\
Writing this out in three dimensions, it instead becomes 
$
  dvp(u,t) - D laplacian u = - gamma u
$
where $laplacian = dvp(,x,deg:2)+dvp(,y,deg:2)+dvp(,z,deg:2)$

]
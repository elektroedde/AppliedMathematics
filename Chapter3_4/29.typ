#import "../template.typ": *

= 3B.29
A test of water taken in a thin long cylindrical contanier of length $L$. At the start, the container only has water. At $t=0$, one end of the cylinder is opened, where the substance concentration is $q_0$. Solve the diffusion problem.
#solution[
Diffisuion equation
$
  &dvp(u,t) - D dvp(u,x,deg:2) = 0"," && 0 < x < L, t > 0\
  &u(0,t) = q_0"," && t > 0\
  &dvp(u(L,t),x) = 0"," && t > 0\
  &u(x,0) = 0"," && 0 < x < L
$
We start by making the equations homogenous. Introduce
$
  v(x,t) = u(x,t) - q_0
$
This gives the model in terms of $v(x)$:
$
  &dvp(v,t) - D dvp(v,x,deg:2) = 0"," && 0 < x < L, t > 0\
  &v(0,t) = 0"," && t > 0\
  &dvp(v(L,t),x) = 0"," && t > 0\
  &v(x,0) = -q_0"," && 0 < x < L
$

Expressed in terms of a linear operator, this beceomes
$
  dvp(v,t) + D cal(A) v = 0"," D_(cal(A)) = {v in cal(C)^2[0,L] | v(0) = 0, v'(L) = 0} \
  cal(A) = -dvp(,x,deg:2)
$
We now want to find the eigenvalues and eigenfunctions of the operator $cal(A)$
$
  cal(A) phi = lambda u arrow dvp(phi,x,deg:2) + lambda phi = 0 arrow phi(x) = c_k e^(i sqrt(lambda_k)x) = \
  = A_k cos(sqrt(lambda_k)x)+ B_k sin(sqrt(lambda_k)x)\
  arrow.b\
  phi(0) = A_k cos(sqrt(lambda_k)x) = 0 arrow A_k = 0 \
  phi'(L) = sqrt(lambda_k)B_k cos(sqrt(lambda_k)L) = 0 arrow sqrt(lambda_k)L =pi/2 + k pi\
$
This gives
$
  &lambda_k = (pi/L [1/2 + k])^2\
  &phi_k (x) = sin(pi/L [1/2 + k]x)"," k = 0,1,2dots
$
and we have found the eigenvalues and eigenfunctions of $cal(A)$

We now have
$
  v(x,t) = sum_(k=0)^infinity v_k (t) phi_k (x)
$
Putting this into the differential equation for $v(x,t)$ gives
$
  sum_(k=0)^infinity (v'_k (t) + D lambda_k v_k (t))phi_k (x) = 0\
  arrow.b\
  v'_k (t) + D lambda_k v_k (t) = 0\
  arrow.b\
  v_k (t) = c_k e^(-D lambda_k t)
$
Now we need to find the coefficients $c_k$, which is done by calculating $v(x,0)$:
$
  v(x,0) = sum_(k=0)^infinity c_k e^(-D lambda_k dot 0) phi_k (x) = sum_(k=0)^infinity c_k phi_k (x) = -q_0
$
The coefficients are now found by using the projection formula
$
  c_k = innerp(phi_k, -q_0)/innerp(phi_k, phi_k) = (-q_0integral_0^L sin(sqrt(lambda_k) x)dif x )/(integral_0^L sin^2(sqrt(lambda_k)x)dif x) =\
  = q_0 [(cos(sqrt(lambda_k)x))/sqrt(lambda_k)]_0^L / ([1/2 x - (sin(2sqrt(lambda_k)x))/(4 sqrt(lambda_k)) ]_0^L) = q_0(cos(sqrt(lambda_k)L)/sqrt(lambda_k) - 1/sqrt(lambda_k))/(L/2) = ans(-(2q_0)/(L sqrt(lambda_k)) = v_k (0))
$
This gives 
$
  v_k (t) = -(2q_0)/(L sqrt(lambda_k)) e^(-D lambda_k t)\
  arrow.b\
  v(x,t) = -(2q_0)/L sum_(k=0)^infinity 1/sqrt(lambda_k) e^(-D lambda_k t) sin(sqrt(lambda_k) x)\
  arrow.b\
  u(x,t) = v(x,t) + q_0 = q_0 - (2q_0)/L sum_(k=0)^infinity 1/sqrt(lambda_k) e^(-D lambda_k t) sin(sqrt(lambda_k)x)
$


]

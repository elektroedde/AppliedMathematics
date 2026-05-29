#import "../template.typ": *

= D.31

(a) $delta(omega-1)$

(b) $delta'(omega + 2)$

(c) $2$

(d) $sin(2 omega)$

(e) $(omega+1)^2$

#solution[
  Going backwards on the identities giives

(a) 
$
  fourier(1) = 2 pi delta(omega) \
  fourier(e^(i omega_0 t) dot 1) = 2pi  delta(omega - omega_0) \
  arrow.b\
  fourierinv(delta(omega-1)) = e^(i t)/(2pi ) 
$
(b) 
$
  fourier(t) = 2 pi i delta'(omega) \
  fourier(e^(i omega_0 t)t) = 2pi i delta'(omega - omega_0) \
  arrow.b\
  fourierinv(delta'(omega+2)) = e^(-2i t)/(2pi i) t
$

(c)
$
  fourier(delta(t)) = 1 \
  arrow.b \
  fourierinv(2) = 2delta(t)
$

(d) 
$
  fourier(theta(t+1)-theta(t-1)) = 2 sin(omega)/omega \
  fourier(theta(t/2 + 1) - theta(t/2 - 1)) =  fourier(theta(t+2)-theta(t-2)) = 2sin(2 omega)/omega\
  fourier((theta(t+2)-theta(t-2))') =fourier(delta(t+2)-delta(t-2)) = i omega(2 sin(2omega)/omega) = 2i sin(2omega) \
  arrow.b\
  fourierinv(sin(2omega)) = 1/(2i) (delta(t+2)-delta(t-2))\
$

(e) 
$
  fourier(delta'(t)) = i omega\
  fourier(-delta''(t)) = omega^2\
  fourier(delta(t)) =1\
  arrow.b\
  fourierinv(omega^2 + 2 omega + 1) = - delta''(t) - 2i delta'(t) + delta(t)
$
]
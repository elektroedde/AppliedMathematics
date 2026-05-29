#import "../template.typ": *

= D.30

(a) $delta(t-1)$

(b) $delta'(t+2)$

(c) $2$

(d) $sin(2t)$

(e) $(t+1)^2$

(f) $e^t theta(t)$

#solution[
  (a) The Fourier transform of $delta(x)$ is $fourier(delta(x)) = 1$ and the translation rule is $cal(F)[f(t-t_0)] = e^(-i omega t_0) fourier(f(t)) $
  $
    fourier(delta(t-1)) = e^(-i omega)
  $

  (b) The derivative rule is $fourier(f'(t)) = i omega fourier(f(t))$. Using this and the traslation rule
  $
    fourier(delta'(t+2)) = i omega e^(2i omega )
  $
  
  (c) Fourier transform of a constant is $2pi delta(omega)$
  $
    fourier(2) = 4pi delta(omega)
  $

  (d) 
  $
    sin(2t) = (e^(2i t) - e^(-2i t))/(2 i)
  $
  We have $fourier(e^(i omega_0 t)f(t)) =fourier(f(omega - omega_0))$
  $
    fourier((e^(2 i t))/(2 i) dot 1 - (e^(-2 i t))/(2 i) dot 1) = pi/i (delta(omega-2)-delta(omega+2))
  $

  (e) $fourier(t f(t)) = i dv(,omega) fourier(f(t))$
  $
    fourier((t+1)^2) = fourier(t^2 + 2t + 1) = i^2 dv(, omega, deg:2)2pi delta(omega) + i dv(,omega) 4pi delta(omega) +2pi delta(omega)=\
    = - 2pi delta''(omega) + 4 pi i delta'(omega) +2pi delta(omega)
  $

  (f) This distribution is not tempered, and thus cannot be Fourier transformed.
]
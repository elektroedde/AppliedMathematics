#import "../template.typ": *

=
Determine the Fourier transform of 

(a) $delta(t-1)$

(b) $delta'(t+1)$

(c) $2$

(d) $sin(2t)$

(e) $(t+1)^1$

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
  
  (c)
]
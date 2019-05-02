# Script para o cálculo de Resistência de Radiação(Rr), Resistência de perda(Rl), e a eficiência de radiação(ecd).
F = function (a, b, N, ufr, D, ro, mi, f, T) {
  
  # T - Razão Rp/Ro
  # a - Raio do Laço
  # b - Raio do Núcleo de Ferrite
  # N - Número de Espiras
  # ufr - Razão da permeabilidade do núcleo de ferrite ilimitado e permeabilidade do espaço livre
  # D - Fator de Desmagnetização
  # ro - Condutividade do fio
  # mi - permeabilidade do fio
  # f - Frequencia
  mo = 4*pi*(10^(-7)) # permeabilidade do espaço livre
  c = 3*(10^8); # Velocidade da Luz.
  
  ucer = (ufr/(1 + D*(ufr - 1))); # Permeabilidade efetiva relativa do Núcle de Ferrite.
  Rr = 20*(pi^2)*(((2*pi*a)/(c/f))^4)*(ucer^2)*(N^2); # Resistência de Radiação
  Rs = sqrt((2*pi*f*mo)/(2*ro)); # Resistência de superfície do condutor
  # Ro = (N*Rs)/(2*pi*b); # Efeito de pele ohmico
  Rl = (N*a*Rs/b)*(T + 1); # Resistência de perda
  ecd = Rr / (Rr + Rl); # Eficiência de radiação
  return(c(Rr, Rl, ecd)); # retorna Resistência de Radiação, Resistência de Perda e Eficiência de radiação em um mesmo vetor.
}
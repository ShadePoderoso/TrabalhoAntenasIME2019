# Script para calcular os erros

Erro = function(v1, v2) {
  E1 = abs(v1 - v2);
  return(E1);
}

windows();
plot(Table8,type='l',col='red', xlab='c/b', ylab='Rp/Ro', main='Gráfico Web Plot Digitizer', lwd=3);
points(Table7,type='l',col='blue', lwd=3);
points(Table6,type='l',col='green', lwd=3);
points(Table5,type='l',col='cyan', lwd=3);
points(Table4,type='l',col='black', lwd=3);
points(Table3,type='l',col='yellow', lwd=3);
points(Table2,type='l',col='purple', lwd=3);
grid();
legend('topright',legend=c('N = 8','N = 7','N = 6','N = 5','N = 4','N = 3','N = 2'), col=c('red','blue','green','cyan','black','yellow','purple'), lwd=3, bty = 'n')
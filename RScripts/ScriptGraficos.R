# Script para calcular os erros

Erro = function(v1, v2) {
  E1 = abs(v1 - v2);
  return(E1);
}

windows();
plot(Table8,type='l',col='red', xlab='c/b', ylab='Rp/Ro', main='Gráfico Web Plot Digitizer', lwd=3, log='x');
points(Table7,type='l',col='blue', lwd=3, log='x');
points(Table6,type='l',col='green', lwd=3, log='x');
points(Table5,type='l',col='cyan', lwd=3, log='x');
points(Table4,type='l',col='black', lwd=3, log='x');
points(Table3,type='l',col='yellow', lwd=3, log='x');
points(Table2,type='l',col='purple', lwd=3, log='x');
grid();
legend('topright',legend=c('N = 8','N = 7','N = 6','N = 5','N = 4','N = 3','N = 2'), col=c('red','blue','green','cyan','black','yellow','purple'), lwd=3, bty = 'n')

windows();
plot(ITF8,type='l',col='red', xlab='c/b', ylab='Rp/Ro', main='Gráfico Interpolação da Tabela', lwd=3, log='x');
points(ITF7,type='l',col='blue', lwd=3, log='x');
points(ITF6,type='l',col='green', lwd=3, log='x');
points(ITF5,type='l',col='cyan', lwd=3, log='x');
points(ITF4,type='l',col='black', lwd=3, log='x');
points(ITF3,type='l',col='yellow', lwd=3, log='x');
points(ITF2,type='l',col='purple', lwd=3, log='x');
grid();
legend('topright',legend=c('N = 8','N = 7','N = 6','N = 5','N = 4','N = 3','N = 2'), col=c('red','blue','green','cyan','black','yellow','purple'), lwd=3, bty = 'n')

windows(); plot(Table8[,1], Erro(Table8[,2],ITF8$y), type='l', col='Red', xlab='c/b', ylab='Erro Absoluto', main='Gráfico do Erro Absoluto para N = 8', lwd=3, log='x'); grid();
windows(); plot(Table7[,1], Erro(Table7[,2],ITF7$y), type='l', col='Red', xlab='c/b', ylab='Erro Absoluto', main='Gráfico do Erro Absoluto para N = 7', lwd=3, log='x'); grid();
windows(); plot(Table6[,1], Erro(Table6[,2],ITF6$y), type='l', col='Red', xlab='c/b', ylab='Erro Absoluto', main='Gráfico do Erro Absoluto para N = 6', lwd=3, log='x'); grid();
windows(); plot(Table5[,1], Erro(Table5[,2],ITF5$y), type='l', col='Red', xlab='c/b', ylab='Erro Absoluto', main='Gráfico do Erro Absoluto para N = 5', lwd=3, log='x'); grid();
windows(); plot(Table4[,1], Erro(Table4[,2],ITF4$y), type='l', col='Red', xlab='c/b', ylab='Erro Absoluto', main='Gráfico do Erro Absoluto para N = 4', lwd=3, log='x'); grid();
windows(); plot(Table3[,1], Erro(Table3[,2],ITF3$y), type='l', col='Red', xlab='c/b', ylab='Erro Absoluto', main='Gráfico do Erro Absoluto para N = 3', lwd=3, log='x'); grid();
windows(); plot(Table2[,1], Erro(Table2[,2],ITF2$y), type='l', col='Red', xlab='c/b', ylab='Erro Absoluto', main='Gráfico do Erro Absoluto para N = 2', lwd=3, log='x'); grid();

10. A partir dos valores da aceleração (a em m/s2), da velocidade inicial (v0 em m/s) e do tempo de percurso
(t em s). Calcular e exibir a velocidade final de automóvel em km/h. Exibir mensagem de acordo com a
tabela:


void main() {
    double v0 = 20;
    double a = 22;
    double t = 10;
  
    double v = v0 + (a*t);
  
    if(v <= 40) print("Veículo muito lento");
    if(40 < v && v <= 60) print("Velocidade permitida");
    if(40 < v && v <= 80) print("Velocidade de cruzeiro");
    if(80 < v && v <= 120) print("Veículo rápido");
    if(v > 120) print("Veículo muito rápido");
 }
/*12. Entrar via teclado com um valor (X) qualquer. Digitar o intervalo que o 
  programa que deverá calcular a tabuada do valor X digitado, sendo que o segundo valor (B), 
  deverá ser maior que o primeiro (A). Exibir a tabuada do valor digitado,
  no intervalo decrescente, ou seja, a tabuada de X no intervalo de B para A.*/

void main() {
  
    int n = 5;
    int t = 15;
    
    if(t < n) return print("O valor é menor");
    for(int i = t; i>0; i--){
      print('$n x $i = ${n * i}');
    }       
 }
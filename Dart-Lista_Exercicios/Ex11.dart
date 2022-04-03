/*11. Entrar via teclado com um valor qualquer. Após a digitação, exibir a
 *  tabuada do valor solicitado, no intervalo de um a dez.*/

void main() {
  
    int n = 5;
    int t = 10;
    
    for(int i = 1; i<=t; i++){
      print('$n x $i = ${n * i}');
    }       
 }
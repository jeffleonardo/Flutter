/*15. Calcular e exibir a soma dos “N” primeiros valores da seqüência abaixo. 
   O valor “N” será digitado, deverá ser positivo, mas menor que cem. 
   Caso o valor não satisfaça a restrição, enviar mensagem de erro e solicitar o valor novamente.
   A seqüência: 2, 5, 10, 17, 26 */

// 1
int gen(int n, int impar){
  return n == 1 ? 2 : gen(n - 1, impar - 2) + impar;
}

void main() {    
   int n = 20;
   int impar = 1;
  
   if(n < 0 && n >= 100){
       return print('ERRO!');  
    }
  
    for(int i = 1; i <= n; i++){
      print(gen(i, impar));
      impar += 2;
    }
}

// 2
int gen(int n, int impar){
  if(n == 1){
    return 2;
  }
  return gen(n - 1, impar - 2) + impar;
}

void main() {    
   int n = 20;
   int impar = 1;
  
   if(n < 0 || n >= 100){
       return print('ERRO!');  
    }
  
    for(int i = 1; i <= n; i++){
      print(gen(i, impar));
      impar += 2;
    }
}
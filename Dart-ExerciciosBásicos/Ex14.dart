/*14. Exibir os vinte primeiros valores da série de Bergamaschi.
          A série: 1, 1, 1, 3, 5, 9, 17,  */

// 1
int berg(int n){
  if(n < 3){
    return 1;
  }
  //              1 + 0
  return berg(n - 1) + berg(n - 2) + berg(n - 3);
}

void main() {  
  int t = 30;
  for(int i = 0; i <= t; i++){
    print(berg(i));
  }
 }
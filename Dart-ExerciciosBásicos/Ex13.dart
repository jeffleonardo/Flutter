/*13. Exibir os trinta primeiros valores da série de Fibonacci. A série: 0, 1, 1, 2, 3, 5, 8, */

// 1
int fib(int n){
  if(n < 2){
    return n;
  }
  //              1 + 0
  return fib(n - 1) + fib(n - 2);
}

void main() {  
  int t = 30;
  for(int i = 0; i <= t; i++){
    print(fib(i));
  }
 }

// 2
int fib(int n){
  return n < 2 ? n : fib(n - 1) + fib(n - 2);
}

void main() {  
  int t = 30;
  for(int i = 0; i <= t; i++){
    print(fib(i));
  }
 }
/*4. Entrar via teclado com o valor da cotação do dólar e uma certa quantidade de dólares. 
     Calcular e exibir o valor correspondente em Reais (R$).*/

void main() {
    double cotacaoDolar = 5.15;
    int dolars = 399; 
    double dolarInReais = dolars / cotacaoDolar;
  
    print("$dolars dolares equivalem a ${dolarInReais.toStringAsPrecision(2)} reais");
}
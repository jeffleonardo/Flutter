/*5. Entrar via teclado com o valor de cinco produtos. Após as entradas, digitar 
     um valor referente ao pagamento da somatória destes valores. Calcular e exibir 
     o troco que deverá ser devolvido.*/

void main() {
    double v1 = 150.0;
    double v2 = 250.0;
    double v3 = 75.0;
    double v4 = 125.0;
    double v5 = 115.0;
  
    double total = v1+v2+v3+v4+v5;
    double payment = 1000.00;
    double troco = payment - total; 
  
    print("Troco: ${troco.toStringAsPrecision(4)} reais");
}
/*7. Entrar com o peso e a altura de uma determinada pessoa. Após a digitação, exibir se 
     esta pessoa está ou não com seu peso ideal. Fórmula: peso/altura².*/

void main() {

    double peso = 85.0;
    double altura = 1.50;
    double imc = peso / (altura * altura);
  
    if(imc <= 24.9) print("${imc.toStringAsPrecision(4)}: Peso normal.");
    if(imc >= 25.0) print("${imc.toStringAsPrecision(4)}: Você está gordo.");
}
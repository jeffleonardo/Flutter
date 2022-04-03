/*6. Calcular e exibir a área de um retângulo, a partir dos valores da base e 
     altura que serão digitados. Se a área for maior que 100, exibir a mensagem 
     “Terreno grande”, caso contrário, exibir a mensagem “Terreno pequeno”.*/

void main() {
    double l1 = 5;
    double l2 = 5;
    double area = l1 * l2;
  
    if(area >= 100) print("Área do terreno $area: Terreno grande.");
    if(area < 100) print("Área do terreno $area: Terreno pequeno.");
}

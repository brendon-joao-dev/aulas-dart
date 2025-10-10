import "dart:io";

int soma = 0;

void main () {
  print("~"*30);
  print("Calculadora de média de notas");
  print("~"*30);
  for (int i = 1; i <= 4; i++) {
    stdout.write("Digite a $iª nota: ");
    String nota = stdin.readLineSync()!;
    print("~"*30);
    
    soma += int.parse(nota);
  }

  double media = soma / 4;

  print("~"*30);
  print("A média das notas inseridas é: $media");
  print("~"*30);
}
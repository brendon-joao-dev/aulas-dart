import "dart:io";

void main () {
  print("~"*30);
  print("Identificar se é Par ou Ímpar");
  print("~"*30);

  while (true) {
    stdout.write("Digite o número que deseja verificar: ");
    int? numero = int.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (numero != null && !numero.isNegative) {
      if (numero % 2 == 0) {
        print("O número $numero é par!");
        print("~"*30);
      } else {
        print("O número $numero é ímpar!");
        print("~"*30);
      }

      stdout.write("Pressione enter para verificar outro número ou 0 para sair: ");
      String continuar = stdin.readLineSync()!;
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("Por favor digite um número inteiro positivo!");
      print("~"*30);
      continue;
    }
  }
}
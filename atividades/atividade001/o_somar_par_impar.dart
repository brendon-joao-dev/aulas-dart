import "dart:io";

void main () {
  print("~"*30);
  print("Somar Par ou Ímpar");
  print("~"*30);
  print("Se o número for par, soma mais cinco");
  print("Se o número for ímpar, soma mais oito");
  print("~"*30);

  while (true) {
    stdout.write("Digite o número que deseja verificar: ");
    int? numero = int.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (numero != null) {
      if (numero % 2 == 0) {
        print("O número $numero foi somado a 5 e resultou em ${numero+5}");
        print("~"*30);
      } else {
        print("O número $numero foi somado a 8 e resultou em ${numero+8}");
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
      print("Por favor digite um número inteiro!");
      print("~"*30);
      continue;
    }
  }
}
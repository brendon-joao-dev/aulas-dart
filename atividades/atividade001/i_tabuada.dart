import "dart:io";

void main () {
  print("~"*30);
  print("Tabuada");
  print("~"*30);

  while (true) {
    stdout.write("Digite o número que deseja ver a tabuada: ");
    int? numero = int.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (numero != null && !numero.isNegative) {
      for (int i = 1; i <= 10; i++) {
        print("$numero X $i = ${numero*i}");
      }
      print("~"*30);

      stdout.write("Pressione enter para ver outra tabuada ou 0 para sair: ");
      String continuar = stdin.readLineSync()!;
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("Por favor digite um número inteiro não negativo!");
      print("~"*30);
      continue;
    }
  }
}
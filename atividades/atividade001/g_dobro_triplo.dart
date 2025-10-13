import "dart:io";

void main () {
  print("~"*30);
  print("Dobro e Triplo");
  print("~"*30);

  while (true) {
    stdout.write ("Digite um número: ");
    double? numero = double.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (numero != null) {
      print("O número digitado é: $numero");
      print("O seu dobro é: ${numero * 2}");
      print("O seu triplo é: ${numero * 3}");
      print("~"*30);
      
      stdout.write("Pressione enter para outro número ou 0 para sair: ");
      String continuar = stdin.readLineSync()!;
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("Por favor digite um número!");
      print("~"*30);
      continue;
    }
  }
}
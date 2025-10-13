import "dart:io";

void main () {
  print("~"*30);
  print("Antecessor e Sucessor");
  print("~"*30);

  while (true) {
    stdout.write ("Digite um número inteiro: ");
    int? numero = int.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (numero != null) {
      print("O número digitado é: $numero");
      print("O seu sucessor é ${numero + 1}");
      print("O seu antecessor é ${numero - 1}");
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
      print("Por favor digite um número inteiro!");
      print("~"*30);
      continue;
    }
  }
}
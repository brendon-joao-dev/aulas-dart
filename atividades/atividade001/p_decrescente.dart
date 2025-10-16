import "dart:io";

double? a;
double? b;
double? c;
double? maior;
double? menor;
double? central;

void main () {
  print("~"*30);
  print("Ordenar Decrescentimente");
  print("~"*30);

  while (true) {
    stdout.write("Digite o primeiro valor: ");
    a = double.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (a != null) {
      while (true) {
        stdout.write("Digite o segundo valor: ");
        b = double.tryParse(stdin.readLineSync()!);
        print("~"*30);

        if (b != null) {
          while (true) {
            stdout.write("Digite o terceiro valor: ");
            c = double.tryParse(stdin.readLineSync()!);
            print("~"*30);

            if(c != null) {
              break;
            } else {
              print("Por favor digite um número!");
              print("~"*30);
              continue;
            }
          }
          break;
        } else {
          print("Por favor digite um número!");
          print("~"*30);
          continue;
        }
      }

      if (a! < b! && a! < c!) menor = a!;
      else if (a! > b! && a! > c!) maior = a!;
      else central = a!;

      if (b! < a! && b! < c!) menor = b!;
      else if (b! > a! && b! > c!) maior = b!;
      else central = b!;

      if (c! < a! && c! < b!) menor = c!;
      else if (c! > a! && c! > b!) maior = c!;
      else central = c!;

      print("Os números $a, $b e $c em ordem decrescente são:");
      print("$maior, $central, $menor");
      print("~"*30);
      
      stdout.write("Pressione enter para ordenar outros números ou 0 para sair: ");
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
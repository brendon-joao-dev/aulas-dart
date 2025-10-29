/**  Faça um programa que receba um número 
 * inteiro positivo e faça uma contagem 
 * regressiva até zero, imprimindo cada número.
*/

import 'dart:io';

void main() {
  print("|~~~~~|" * 7);
  print("");
  print("Contagem regressiva");
  print("");
  print("|~~~~~|" * 7);
  print("");

  while (true) {
    int? numero;

    while (true) {
      stdout.write("Digite o valor de início: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      print("");
      numero = int.tryParse(entrada.replaceAll(" ", ""));
      if (numero == null || numero.isNegative) {
        print("Por favor digite um início inteiro e positivo!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    for (int i = numero; i >= 0; i--) {
      print(i);
      print("");
    }
    print("|~~~~~|" * 7);
    print("");

    stdout.write("Deseja realizar outro cálculo? (s/n): ");
    String resposta = stdin.readLineSync()!.trim().toLowerCase();
    print("");
    print("|~~~~~|" * 7);
    print("");

    if (resposta == 'n') {
      print("Obrigado por usar! Encerrando o programa... ");
      print("");
      print("|~~~~~|" * 7);
      break;
    } else {
      continue;
    }
  }
}

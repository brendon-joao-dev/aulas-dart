// G - Sequência de potências:Faça um programa que receba um número inteiro N e imprima as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).

import 'dart:io';
import 'dart:math';

void main() {
  print("|~~~~~|" * 7);
  print("");
  print("Calculadora de Potências de 2");
  print("");
  print("|~~~~~|" * 7);
  print("");

  while (true) {
    int? numero;

    while (true) {
      stdout.write("Digite o valor da potência: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      print("");
      numero = int.tryParse(entrada.replaceAll(" ", ""));
      if (numero == null || numero.isNegative) {
        print("Por favor digite uma potência inteira e positiva!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    num resultado = numero;
    for (int i = 0; i < numero + 1; i++) {
      resultado = pow(2, i);
      print("O número 2^$i = $resultado");
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

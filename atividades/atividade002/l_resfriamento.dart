// L - Resfriamento de um líquido: Faça um programa que simule o resfriamento
// de um líquido a partir de uma temperatura inicial até atingir a temperatura ambiente (25°C).
// A cada segundo, a temperatura diminui 2%. Imprima a temperatura a cada segundo.

import 'dart:io';

void main() {
  while (true) {
    double? temperatura;
    while (true) {
      stdout.write("Digite a temperatura do líquido: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      print("");
      temperatura = double.tryParse(
        entrada.replaceAll(", ", ".").replaceAll(" ", ""),
      );
      if (temperatura == null || temperatura.isNegative) {
        print("Por favor digite uma temperatura positiva!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    double esfria = temperatura * 0.02;
    int tempo = 0;

    while (temperatura! > 26) {
      temperatura -= esfria;
      tempo++;
      print("Tempo (s): $tempo - Temperatura: ${temperatura.toStringAsFixed(2)}");
    }

    print(" ");
    print("~°" * 20);
    stdout.write("Deseja resfriar outro líquido? (s/n): ");
    String resposta = stdin.readLineSync()!.trim().toLowerCase();
    print("~" * 20);

    if (resposta == 'n') {
      print("");
      print("Obrigado por usar! Encerrando o programa... ");
      print("~°" * 20);
      break;
    } else {
      continue;
    }
  }
}

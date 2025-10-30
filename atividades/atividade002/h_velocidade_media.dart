// H - Cálculo de velocidade média: Faça um programa que receba as distâncias percorridas a cada intervalo de tempo e calcule a velocidade média total do percurso.

import "dart:io";

void main() {
  // -------------- looping do sistema --------------
  while (true) {
    double? distancia;
    double? tempo;

    print("|~~~~~|" * 7);
    print("");
    print("Calculadora de velocidade média");
    print("");
    print("|~~~~~|" * 7);
    print("");

    while (true) {
      stdout.write("Digite a distância percorrida: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      distancia = double.tryParse(
        entrada.replaceAll(", ", ".").replaceAll(" ", ""),
      );
      if (distancia == null || distancia.isNegative) {
        print("Por favor digite uma distância positiva!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    while (true) {
      stdout.write("Digite o tempo do percurso: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      tempo = double.tryParse(
        entrada.replaceAll(", ", ".").replaceAll(" ", ""),
      );
      if (tempo == null || tempo.isNegative) {
        print("Por favor digite um tempo positivo!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    double velocidadeMedia = distancia / tempo;

    print("Em um percurso de ${distancia.toStringAsFixed(2)}km");
    print("");
    print("Percorrido em um tempo de ${tempo.toStringAsFixed(2)}h");
    print("");
    print("A velocidade média é de ${velocidadeMedia.toStringAsFixed(2)}km/h");
    print("");
    print("|~~~~~|" * 7);
    print("");

    stdout.write("Deseja realizar outro cálculo? (s/n): ");
    String resposta = stdin.readLineSync()!.trim().toLowerCase();
    print("");
    print("|~~~~~|" * 7);
    print("");

    if (resposta == 'n') {
      print("Obrigado por usar! Encerrando o programa...");
      print("");
      print("|~~~~~|" * 7);
      break;
    }
  }
}

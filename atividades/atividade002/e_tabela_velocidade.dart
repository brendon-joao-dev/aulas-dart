// E - Tabela de velocidades: Faça um programa que leia o tempo (em segundos) e a aceleração constante de um objeto e imprima sua velocidade a cada segundo até o tempo informado.

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  double? tempo;
  double? aceleracao;

  print("|~~~~~|" * 7);
  print("");
  print("Velocidade a cada segundo");
  print("");
  print("|~~~~~|" * 7);
  print("");

  // -------------- looping do sistema --------------
  while (true) {
    // -------------- Looping de entrada do tempo --------------
    while (true) {
      stdout.write("Digite um tempo em segundos (s): ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      tempo = double.tryParse(
        entrada.replaceAll(", ", ".").replaceAll(" ", ""),
      );
      if (tempo == null || tempo.isNegative) {
        print("Por favor digite um tempo válido!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    // -------------- Looping de entrada da aceleração --------------
    while (true) {
      stdout.write("Digite uma aceleração em m/s: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      aceleracao = double.tryParse(
        entrada.replaceAll(", ", ".").replaceAll(" ", ""),
      );
      if (aceleracao == null) {
        print("Por favor digite uma aceleração válida!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    double velocidade = 0;
    for (int i = 0; i < tempo; i++) {
      velocidade += aceleracao;
      print("Velocidade atual: $velocidade");
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
      print("Obrigado por usar! Encerrando o programa...");
      print("");
      print("|~~~~~|" * 7);
      break;
    }
  }
}

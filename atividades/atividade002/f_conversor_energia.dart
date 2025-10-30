// F - Conversão de energia: Faça um programa que leia um valor em joules e converta para calorias (1 caloria = 4,184 joules), exibindo os resultados.

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  double? joules;
  double calorias;

  print("|~~~~~|" * 7);
  print("");
  print("Conversor de Joules para Calorias");
  print("");
  print("|~~~~~|" * 7);
  print("");

  // -------------- looping do sistema --------------
  while (true) {
    // -------------- Looping de entrada --------------
    while (true) {
      stdout.write("Digite uma energia em Joules: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      joules = double.tryParse(
        entrada.replaceAll(", ", ".").replaceAll(" ", ""),
      );
      if (joules == null) {
        print("Por favor digite uma energia válida");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    calorias = joules / 4.184;
    print(
      "${joules.toStringAsFixed(3).replaceAll(".", ",")} Joules = ${calorias.toStringAsFixed(3).replaceAll(".", ",")} Calorias",
    );
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

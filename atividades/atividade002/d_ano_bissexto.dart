// D - Verificação de ano bissexto: Faça um programa que receba um ano e verifique se ele é bissexto, exibindo a respost

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  int? ano;

  print("|~~~~~|" * 7);
  print("");
  print("Verificador de Ano Bissexto");
  print("");
  print("|~~~~~|" * 7);
  print("");

  // -------------- looping do sistema --------------
  while (true) {
    // -------------- Looping de entrada --------------
    while (true) {
      stdout.write("Digite um ano: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      ano = int.tryParse(entrada.replaceAll(" ", ""));
      if (ano == null || ano.isNegative) {
        print("Por favor digite um ano válido");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    if (ano % 400 == 0) {
      print("O ano de $ano é bissexto!");
    } else if (ano % 4 == 0 && ano % 100 != 0) {
      print("O ano de $ano é bissexto!");
    } else {
      print("O ano de $ano não é bissexto!");
    }
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

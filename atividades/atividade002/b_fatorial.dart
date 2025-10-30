// B - Fatorial com repetição: Faça um programa que leia um número inteiro positivo e calcule seu fatorial usando um loop.

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  int? numero;
  int fatorial = 0;

  print("|~~~~~|" * 7);
  print("");
  print("Calculadora de Fatorial");
  print("");
  print("|~~~~~|" * 7);
  print("");

  // -------------- looping do sistema --------------
  while (true) {
    // -------------- Looping de entrada --------------
    while (true) {
      stdout.write("Digite um número inteiro positivo: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      numero = int.tryParse(entrada.replaceAll(" ", ""));
      if (numero == null || numero.isNegative) {
        print("Por favor digite um número inteiro positivo!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    fatorial = numero;
    for (int i = 1; i < numero; i++) {
      fatorial *= i;
    }

    print("A fatorial de $numero é $fatorial");
    print("");
    print("|~~~~~|" * 7);
    print("");

    // Entrada da opção para o usuário continuar o programa
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

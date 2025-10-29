// K - Determinação do maior divisor comum (MDC): Faça um programa que receba dois números inteiros e calcule o MDC usando o algoritmo de Euclides com repetição.

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  String? continuar;
  String validador;

  // -------------- looping do sistema --------------
  while (true) {
    int? a = 0;
    int? b = 0;
    while (true) {
      stdout.write("Digite um número: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      print("");
      a = int.tryParse(entrada.replaceAll(" ", ""));
      if (a == null || a.isNegative) {
        print("Por favor digite um número válido");
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
      stdout.write("Digite um número: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      print("");
      b = int.tryParse(entrada.replaceAll(" ", ""));
      if (b == null || b.isNegative && b <= a) {
        print("Por favor digite um número válido");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    while (b != 0) {
      int resto = a! % b!;
      a = b;
      b = resto;
    }

    print("$a");

    // Entrada da opção para o usuário continuar o programa
    stdout.write("Deseja rodar o programa novamente? (s/n)");
    continuar = stdin.readLineSync();
    print("");
    print("|~~~~~|" * 7);
    print("");

    // Verifica se a variável "continuar" não é nula
    if (continuar != null) {
      validador = continuar.replaceAll(
        " ",
        "",
      ); // Remove todos os espaços vazios da string
      validador = validador
          .toLowerCase(); // Converte a string para letras minúsculas
      continuar = validador; // Devolve o valor validado a variável original

      // Verifica se a variável "continuar" (validada) é igual a "s"
      if (continuar == "s") {
        continue; // Reinicia o programa
      } else {
        break; // Sai do programa
      }
    } else {
      break; // Sai do programa se o usuário não digitar nada
    }
  }
}

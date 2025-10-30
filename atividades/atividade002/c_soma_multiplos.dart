// C - Soma dos múltiplos: Faça um programa que receba um número inteiro N e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  int? numero;

  print("|~~~~~|" * 7);
  print("");
  print("Soma dos Multiplos de 3 ou 5");
  print("");
  print("|~~~~~|" * 7);
  print("");

  // -------------- looping do sistema --------------
  while (true) {
    String multiTres = "";
    String multiCinco = "";
    int somaTres = 0;
    int somaCinco = 0;
    // -------------- Looping de entrada --------------
    while (true) {
      stdout.write("Digite um número: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      numero = int.tryParse(entrada.replaceAll(" ", ""));
      if (numero == null || numero.isNegative) {
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

    for (int i = numero; i > 0; i--) {
      if (i % 3 == 0) {
        multiTres += "$i, ";
        somaTres += i;
      } else if (i % 5 == 0) {
        multiCinco += "$i, ";
        somaCinco += i;
      } else {
        continue;
      }
    }

    print("De acordo com o número: $numero");
    print("");
    print("Os multiplos de 3 são: $multiTres");
    print("A soma dos multiplos de 3 é: $somaTres");
    print("");
    print("Os multiplos de 5 são: $multiCinco");
    print("A soma dos multiplos de 5 é: $somaCinco");
    print("");
    print("|~~~~~|" * 7);
    print("");

    // Verifica se a variável "continuar" não é nula
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

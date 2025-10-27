// C - Soma dos múltiplos: Faça um programa que receba um número inteiro N e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  String? continuar;
  String validador;
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
      print("");
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

    // Entrada da opção para o usuário continuar o programa
    stdout.write("Deseja somar outros multiplos? (s/n)");
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

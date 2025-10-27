// B - Fatorial com repetição: Faça um programa que leia um número inteiro positivo e calcule seu fatorial usando um loop.
import "dart:io";

void main() {
  // Declaração de variáveis
  String validador;
  String? continuar;
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
      print("");
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
    stdout.write("Deseja calcular a fatorial de outro número? (s/n)");
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

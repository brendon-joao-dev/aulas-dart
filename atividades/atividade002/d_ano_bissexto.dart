// D - Verificação de ano bissexto: Faça um programa que receba um ano e verifique se ele é bissexto, exibindo a respost

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  String? continuar;
  String validador;
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
      print("");
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

    print("|~~~~~|" * 7);
    print("");
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

    // Entrada da opção para o usuário continuar o programa
    stdout.write("Deseja verificar outro ano bissexto? (s/n)");
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

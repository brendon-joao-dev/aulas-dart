// F - Conversão de energia: Faça um programa que leia um valor em joules e converta para calorias (1 caloria = 4,184 joules), exibindo os resultados.

// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  String? continuar;
  String validador;
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
    print("${joules.toStringAsFixed(3).replaceAll(".", ",")} Joules = ${calorias.toStringAsFixed(3).replaceAll(".", ",")} Calorias");
    print("");
    print("|~~~~~|" * 7);
    print("");


    // Entrada da opção para o usuário continuar o programa
    stdout.write("Deseja calcular outra aceleração? (s/n)");
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

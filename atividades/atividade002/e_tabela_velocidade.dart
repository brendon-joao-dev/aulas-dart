// Importação da biblioteca "dart:io"
import "dart:io";

void main() {
  // Declaração de variáveis
  String? continuar;
  String validador;
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
      print("");
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
      print("");
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

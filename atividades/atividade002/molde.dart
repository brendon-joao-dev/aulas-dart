// Importação da biblioteca "dart:io"
import "dart:io";

void main () {
  // Declaração de variáveis
  String? continuar;
  String validador;

  // -------------- looping do sistema --------------
  while (true) {
    // Entrada da opção para o usuário continuar o programa
    stdout.write("Deseja rodar o programa novamente? (s/n)");
    continuar = stdin.readLineSync();
    print("|~~~~~|"*7);

    // Verifica se a variável "continuar" não é nula
    if (continuar != null) {
      validador = continuar.replaceAll(" ", ""); // Remove todos os espaços vazios da string
      validador = validador.toLowerCase(); // Converte a string para letras minúsculas
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

  // -------------- Entrada de int --------------
  int? numero;

  while(true) {
    stdout.write("Digite um número: ");
    String entrada = stdin.readLineSync()!;
    numero = int.tryParse(entrada.replaceAll(" ", ""));
    if (numero == null || numero.isNegative) {
      print("Por favor digite um número válido");
      print("|~~~~~|"*7);
      continue;
    } else {
      break;
    }
  }


  // -------------- Entrada de double --------------
  double? numeroDois;

  while (true) {
    stdout.write("Digite um double: ");
    String entrada = stdin.readLineSync()!;
    numeroDois = double.tryParse(entrada.replaceAll(", ", ".").replaceAll(" ", ""));
    if (numeroDois == null || numeroDois.isNegative) {
      print("Por favor digite um número válido");
      print("|~~~~~|"*7);
      continue;
    } else {
      break;
    }
  }
}
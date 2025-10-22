// Importação da biblioteca "dart:io"
import "dart:io";

void main () {
  // Declaração de variáveis
  String? continuar;
  String validador;

  // Início do looping do sistema
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
}
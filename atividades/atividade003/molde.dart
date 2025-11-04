// Arquivo de molde com trecho comum a todas as atividades

// Importação da biblioteca dart:io - Serve para entrada e saída de dados
import "dart:io";

// Função principal do programa
void main() {
  // Título exibido apenas uma vez
  print("<=====>" * 7);
  print("");
  print("");
  print("");

  // Declaração de variáveis
  String continuar;

  // Looping para permitir repetição do programa
  while (true) {
    // <+++++++ ENTRADA DE DADOS +++++++>
    print("<+++++>" * 7);
    print("");

    print("<+++++>" * 7);
    print("");

    // <======= PROCESSAMENTO =======>

    // <------- SAÍDA DE DADOS ------->
    print("<----->" * 7);
    print("");

    print("<----->" * 7);
    print("");

    // Permitir repetição
    stdout.write("Deseja repetir o programa? (s/n) ");
    continuar = stdin.readLineSync()!.toLowerCase().replaceAll(" ", "");
    print("");

    print("<=====>" * 7);
    if (continuar == "s") {
      // Reinicia o programa
      continue;
    } else {
      // Saí do programa
      break;
    }
  }
}

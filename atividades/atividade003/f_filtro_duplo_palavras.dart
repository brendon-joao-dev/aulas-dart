// 6. Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que satisfazem duas condições simultâneas:
// 1) o comprimento da palavra deve ser maior que 5 caracteres; 2) a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

// Importação da biblioteca dart:io - Serve para entrada e saída de dados
import "dart:io";

// Função principal do programa
void main() {
  // Título exibido apenas uma vez
  print("<=====>" * 7);
  print("");
  print("Filtra palavras com 5 ou mais letras e que começam com 'A'");
  print("");

  // Declaração de variáveis
  String continuar;
  String entrada;
  List<String> palavras;
  List<String> palavras_filtradas;

  // Looping para permitir repetição do programa
  while (true) {
    // <+++++++ ENTRADA DE DADOS +++++++>
    print("<+++++>" * 7);
    print("");
    while (true) {
      stdout.write("Digite uma sequencia de palavras separadas por espaço: ");
      entrada = stdin.readLineSync()!;
      print("");

      palavras = entrada.split(" ");

      if (palavras.isEmpty) {
        print("Por favo digite alguma palavra!");
        print("");
        continue;
      } else {
        break;
      }
    }
    print("<+++++>" * 7);
    print("");

    // <======= PROCESSAMENTO =======>
    palavras_filtradas = palavras.where((palavra) => palavra.length >= 5 && palavra[0].toLowerCase() == "a").toList();

    // <------- SAÍDA DE DADOS ------->
    print("<----->" * 7);
    print("");
    print("As palavras Originais são: ");
    palavras.forEach((elemento) => stdout.write("$elemento, "));
    print("");
    print("");
    print("As palavras que tem 5 ou mais letras e começam com 'A' são: ");
    palavras_filtradas.forEach((elemento) => stdout.write("$elemento, "));
    print("");
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

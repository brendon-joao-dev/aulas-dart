// 4. Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar.
// Se for ímpar, ele deve ser multiplicado por 2. Se for par, ele deve permanecer inalterado.
// O resultado final deve ser uma nova lista com os valores transformados.

// Importação da biblioteca dart:io - Serve para entrada e saída de dados
import "dart:io";

// Função principal do programa
void main() {
  // Título exibido apenas uma vez
  print("<=====>" * 7);
  print("");
  print("Verifica números ímpares e dobra esses");
  print("");

  // Declaração de variáveis
  String continuar;
  String entrada;
  List<String> entradas;
  List<int> intervalo;

  // Looping para permitir repetição do programa
  while (true) {
    // <+++++++ ENTRADA DE DADOS +++++++>
    print("<+++++>" * 7);
    print("");
    while (true) {
      stdout.write("Digite uma sequencia de números separados por espaço: ");
      entrada = stdin.readLineSync()!;
      print("");

      entradas = entrada.split(" ");

      intervalo = entradas.map((entrada) => int.tryParse(entrada) ?? 0).toList();

      if (intervalo.isEmpty) {
        print("Por favo digite números válidos!");
        print("");
        continue;
      } else {
        break;
      }
    }
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

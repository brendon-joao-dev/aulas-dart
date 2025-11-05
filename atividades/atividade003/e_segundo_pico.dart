// 5. Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista.
// A lista pode conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é imediatamente menor que o maior valor.

// Importação da biblioteca dart:io - Serve para entrada e saída de dados
import "dart:io";
import "dart:math";

// Função principal do programa
void main() {
  // Título exibido apenas uma vez
  print("<=====>" * 7);
  print("");
  print("Encontra o segundo maior valor de uma lista");
  print("");

  // Declaração de variáveis
  String continuar;
  String entrada;
  int maior;
  int segundo_maior;
  List<String> entradas;
  List<int> intervalo;
  List<int> intervalo_processamento;

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

      if (intervalo.isEmpty || intervalo.toSet().length <= 1) {
        print("Por favo digite números válidos e pelo menos dois diferentes!");
        print("");
        continue;
      } else {
        break;
      }
    }
    print("<+++++>" * 7);
    print("");

    // <======= PROCESSAMENTO =======>
    intervalo_processamento = [...intervalo];

    maior = intervalo_processamento.reduce(max);

    intervalo_processamento.remove(maior);

    segundo_maior = intervalo_processamento.reduce(max);

    while (segundo_maior == maior) {
      intervalo_processamento.remove(segundo_maior);
      segundo_maior = intervalo_processamento.reduce(max);
    }

    // <------- SAÍDA DE DADOS ------->
    print("<----->" * 7);
    print("");
    print("O intervalo original é: ");
    intervalo.forEach((elemento) => stdout.write("$elemento, "));
    print("");
    print("");
    print("O segundo maior valor é: $segundo_maior");
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

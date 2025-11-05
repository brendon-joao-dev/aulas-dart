// 2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma lista auxiliar)
// para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.

import "dart:io";

void main() {
  print("<=====>" * 7);
  print("");
  print("Verifica quantos valores únicos existem em uma lista");
  print("");

  String entrada;
  String continuar;
  List<String> entradas;
  List<int> intervalo;
  Set<int> intervalo_sem_duplicatas;
  List<int> intervalo_unicos;

  while (true) {
    // Também pode ser usado .clear para limpar as coleções
    intervalo = [];
    intervalo_sem_duplicatas = {};
    intervalo_unicos = [];

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
    // Copia o intervalo para um Set que não permite duplicatas
    intervalo_sem_duplicatas = intervalo.toSet();

    // Copia intervalo_sem_duplicatas de volta para uma lista
    intervalo_unicos = intervalo_sem_duplicatas.toList();

    // Ordena a lista de valores únicos
    intervalo_unicos.sort();

    // <------- SAÍDA DE DADOS ------->
    print("<----->" * 7);
    print("");
    print("O intervalo original é: ");
    intervalo.forEach((elemento) => stdout.write("$elemento, "));
    print("");
    print("");
    print("O intervalo de número únicos é: ");
    intervalo_unicos.forEach((elemento) => stdout.write("$elemento, "));
    print("");
    print("");
    print("O intervalo contém ${intervalo_unicos.length} elementos únicos");
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

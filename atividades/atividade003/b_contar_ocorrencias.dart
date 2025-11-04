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
  int? inicio;
  int? fim;
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
      stdout.write("Digite o início do intervalo: ");
      entrada = stdin.readLineSync()!;
      print("");
      inicio = int.tryParse(entrada.replaceAll(", ", ".").replaceAll(" ", ""));
      if (inicio == null || inicio.isNegative) {
        print("Por favor digite um início inteiro positivo!");
        print("");
        continue;
      } else {
        break;
      }
    }

    while (true) {
      stdout.write("Digite o fim do intervalo: ");
      entrada = stdin.readLineSync()!;
      print("");
      fim = int.tryParse(entrada.replaceAll(", ", ".").replaceAll(" ", ""));
      if (fim == null || fim.isNegative) {
        print("Por favor digite um fim inteiro positivo!");
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
    stdout.write("Deseja repetir o programa? (s/n) ");
    continuar = stdin.readLineSync()!.toLowerCase().replaceAll(" ", "");
    print("");

    print("<=====>" * 7);
    if (continuar == "s") {
      continue;
    } else {
      break;
    }
  }

  print("<+++++>" * 7);
  print("<----->" * 7);
  print("<----->" * 7);
  print("<=====>" * 7);
}

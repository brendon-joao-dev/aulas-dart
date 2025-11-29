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

  while (true) {
    List<int> listaDuplicatas = [];
    List<int> listaSemDuplicatas = [];

    listaDuplicatas = entradaIntervalo<int>();

    listaSemDuplicatas = eliminarDuplicatas<int>(
      listaComDuplicatas: listaDuplicatas,
    );

    print("O intervalo original é: ");
    exibirIntervalo(listaDuplicatas);
    print("");
    print("O intervalo sem duplicatas é: ");
    exibirIntervalo(listaSemDuplicatas);
    print("");
    print("");
    print("Existem ${listaSemDuplicatas.length} elementos únicos na lista.");
    print("");

    if (continuarPrograma()) {
      continue;
    } else {
      break;
    }
  }
  print("<=====>" * 7);
}

List<T> entradaIntervalo<T>({
  int quantidade_itens = 0,
  String elementoDesejado = "números inteiros",
}) {
  List<String> entradas;
  List<T?> intervaloValidando;
  bool todosValidos = true;

  while (true) {
    todosValidos = true;
    stdout.write(
      "Digite uma sequência de ${elementoDesejado} separados por espaço: ",
    );
    String? entrada = stdin.readLineSync();
    print("");

    if (entrada != null) {
      entradas = entrada.trim().split(" ");
    } else {
      print("Por favor digite algo!");
      print("");
      continue;
    }

    intervaloValidando = entradas.map((item) {
      if (T == int) {
        return int.tryParse(item) as T?;
      }
      if (T == double) {
        return double.tryParse(item) as T?;
      }
      if (T == String) {
        return item as T?;
      }
    }).toList();

    if (quantidade_itens != 0) {
      if (quantidade_itens != intervaloValidando.length) {
        print("Por favor digite ${quantidade_itens} ${elementoDesejado}!");
        print("");
        continue;
      }
    }

    for (int i = 0; i < intervaloValidando.length; i++) {
      if (intervaloValidando[i] == null) {
        print("O ${i + 1}° número digitado é inválido!");
        print("");
        todosValidos = false;
        break;
      } else {
        continue;
      }
    }

    if (todosValidos) {
      List<T> intervalo = intervaloValidando.cast<T>();
      return intervalo;
    }
  }
}

void exibirIntervalo(intervalo) {
  intervalo.forEach((elemento) => stdout.write("$elemento, "));
}

bool continuarPrograma() {
  String continuar = "";
  while (true) {
    stdout.write("Deseja executar o programa novamente? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase().trim();
    print("");

    if (continuar == "s") {
      return true;
    } else if (continuar == "n") {
      return false;
    } else {
      print("Por favor digite 's' para sim ou 'n' para não!\n");
      continue;
    }
  }
}

List<T> eliminarDuplicatas<T>({required List<T> listaComDuplicatas}) {
  Set<T> setUnicos = listaComDuplicatas.toSet();
  List<T> listaUnicos = setUnicos.toList();
  listaUnicos.sort();
  return listaUnicos;
}

// 1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e,
// simultaneamente, maiores que 10. Após a filtragem, deve-se calcular a soma total desses números restantes.

import "dart:io";

void main() {
  print("<=====>" * 7);
  print("");
  print("Filtra números pares e soma eles");
  print("");

  while (true) {
    List<int> numeros = [];
    int somaPares = 0;

    numeros = entradaIntervalo<int>();

    somaPares = filtraSoma(lista: numeros, filtro: (numero) => numero % 2 == 0);

    print("O intervalo é: ");
    exibirIntervalo(numeros);
    print("");
    print("A soma dos pares nesse intervalo é: $somaPares\n");

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

int filtraSoma({required List<int> lista, required Function filtro}) {
  List<int> filtrada = lista.where((elemento) => filtro(elemento)).toList();
  int valorUnico = filtrada.reduce((soma, numero) => soma += numero);
  return valorUnico;
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
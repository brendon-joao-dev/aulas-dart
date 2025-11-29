// 4. Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar. Se for ímpar, ele deve ser multiplicado por 2.
// Se for par, ele deve permanecer inalterado. O resultado final deve ser uma nova lista com os valores transformados

import "dart:io";

void main() {
  print("<=====>" * 7);
  print("");
  print("Verifica números ímpares e dobra esses");
  print("");

  while (true) {
    List<int> numeros = [];
    List<int> imparesMultiplicados = [];

    numeros = entradaIntervalo<int>();

    imparesMultiplicados = filtraModifica<int>(lista: numeros, filtro: (elemento) => elemento % 2 != 0, modificacao: (elemento) => elemento * 2);

    if (continuarPrograma()) {
      continue;
    } else {
      break;
    }
  }
  print("<=====>" * 7);
}

List<T> entradaIntervalo<T>({int quantidade_itens = 0, String elementoDesejado = "números inteiros"}) {
  List<String> entradas;
  List<T?> intervaloValidando;
  bool todosValidos = true;

  while (true) {
    todosValidos = true;
    stdout.write("Digite uma sequência de ${elementoDesejado} separados por espaço: ");
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
        print("O ${i+1}° número digitado é inválido!");
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


List<T> filtraModifica<T>({required List<T> lista, required Function filtro, required Function modificacao}) {
  List<T> filtrada = lista.where((elemento) => filtro(elemento)).toList();
  List<T> modificada = filtrada.map((elemento) => modificacao(elemento)).toList();
  return modificada;
}
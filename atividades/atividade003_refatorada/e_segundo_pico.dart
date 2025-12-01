// 5. Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista.
// A lista pode conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é imediatamente menor que o maior valor.

import "dart:io";
import "dart:math";

void main() {
  print("<=====>" * 7);
  print("");
  print("Encontra o segundo maior valor de uma lista");
  print("");

  while (true) {
    List<int> numeros = [];
    List<int> processamento = [];
    int maior = 0;
    int segundo_maior = 0;

    numeros = entradaIntervalo<int>();

    processamento = [...numeros];

    maior = maxList(listaNumeros: processamento);

    processamento.remove(maior);

    segundo_maior = maxList(listaNumeros: processamento);

    while (segundo_maior == maior) {
      processamento.remove(segundo_maior);
      segundo_maior = maxList(listaNumeros: processamento);
    }

    print("O intervalo original é: ");
    exibirIntervalo(numeros);
    print("");
    print("");
    print("O segundo maior valor é $segundo_maior");
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

int maxList({required List<int> listaNumeros}) {
  int maior = listaNumeros.reduce(max);
  return maior;
}
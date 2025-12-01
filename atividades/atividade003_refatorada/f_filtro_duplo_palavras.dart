// 6. Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que satisfazem duas condições simultâneas:
// 1) o comprimento da palavra deve ser maior que 5 caracteres;
// 2) a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

import "dart:io";

void main() {
  print("<=====>" * 7);
  print("");
  print("Filtra palavras com 5 ou mais letras e que começam com 'A'");
  print("");

  while (true) {
    List<String> palavras = [];
    List<String> palavras_filtradas = [];

    palavras = entradaIntervalo<String>();

    palavras_filtradas = filtraPalavras(listaPalavras: palavras, letraIncial: "A", numeroCaracteres: 5);

    print("As palavras originais são: ");
    exibirIntervalo(palavras);
    print("");
    print("");
    print("As palavras filtradas são: ");
    exibirIntervalo(palavras_filtradas);
    print("");
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

List<String> filtraPalavras({
  required List<String> listaPalavras,
  required String letraIncial,
  required int numeroCaracteres,
}) {
  List<String> palavras_filtradas = listaPalavras
      .where(
        (palavra) =>
            palavra.length >= numeroCaracteres &&
            palavra[0].toLowerCase() == letraIncial.toLowerCase(),
      )
      .toList();
  return palavras_filtradas;
}
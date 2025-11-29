import "dart:io";
import "dart:math";

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

int filtraSoma({required List<int> lista, required Function filtro}) {
  List<int> filtrada = lista.where((elemento) => filtro(elemento)).toList();
  int valorUnico = filtrada.reduce((soma, numero) => soma += numero);
  return valorUnico;
}

List<T> eliminarDuplicatas<T>({required List<T> listaComDuplicatas}) {
  Set<T> setUnicos = listaComDuplicatas.toSet();
  List<T> listaUnicos = setUnicos.toList();
  listaUnicos.sort();
  return listaUnicos;
}

double calcularMedia({required List<double> elementos}) {
  double soma = elementos.reduce((somadas, elemento) => somadas += elemento);
  double media = soma / elementos.length;
  return media;
}

List<T> filtraModifica<T>({required List<T> lista, required Function filtro, required Function modificacao}) {
  List<T> filtrada = lista.where((elemento) => filtro(elemento)).toList();
  List<T> modificada = filtrada.map((elemento) => modificacao(elemento)).toList();
  return modificada;
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

double maxList({required List<double> listaNumeros}) {
  double maior = listaNumeros.reduce(max);
  return maior;
}

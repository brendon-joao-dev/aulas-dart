// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, em seguida,
// calcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).

import "dart:io";

void main() {
  print("<=====>" * 7);
  print("");
  print("Cálcula a média de uma lista de notas removendo a menor");
  print("");
  while (true) {
    List<double> notas = [];
    List<double> notasSemMenor = [];
    double mediaNotas = 0;

    notas = entradaIntervalo<double>(elementoDesejado: "notas");

    notas.sort();

    notasSemMenor = [...notas];

    notasSemMenor.removeAt(0);

    mediaNotas = calcularMedia(elementos: notasSemMenor);

    print("A lista de notas é: ");
    exibirIntervalo(notas);
    print("");
    print("");
    print("A lista de notas sem a menor é: ");
    exibirIntervalo(notasSemMenor);
    print("");
    print("");
    print("A média dessas notas é: $mediaNotas");
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

double calcularMedia({required List<double> elementos}) {
  double soma = elementos.reduce((somadas, elemento) => somadas += elemento);
  double media = soma / elementos.length;
  return media;
}

import "dart:io";

void main() {
  print("<=====>" * 7);
  print("");
  print("Filtra números pares e soma eles");
  print("");

  String entrada;
  String continuar;
  int? inicio;
  int? fim;
  int soma = 0;
  List<int> intervalo = [];
  List<int> intervalo_filtrado = [];

  while (true) {
    print("<+++++>" * 7);
    print("");

    soma = 0;
    intervalo = [];
    intervalo_filtrado = [];

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

    for (int i = inicio; i <= fim; i++) {
      intervalo.add(i);
    }

    intervalo_filtrado = intervalo
        .where((numero) => numero % 2 == 0 && numero > 10)
        .toList();

    try {
      soma = intervalo_filtrado.reduce((soma, numero) => soma + numero);
    } catch (e) {
      print(
        "Intervalo fora do alcance, o intervalo deve conter valores maiores que 10!",
      );
      print("");
    }

    print("<----->" * 7);
    print("");
    print("O intervalo original é: ");
    intervalo.forEach((elemento) => stdout.write("$elemento, "));
    print("");
    print("");
    print("O intervalo de pares é: ");
    intervalo_filtrado.forEach((elemento) => stdout.write("$elemento, "));
    print("");
    print("");
    print("A soma dos elementos desse intervalo é: $soma");
    print("");
    print("<----->" * 7);
    print("");

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
}

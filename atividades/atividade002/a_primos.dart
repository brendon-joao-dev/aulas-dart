// A - Números primos no intervalo: Faça um programa que receba dois números inteiros A e B e imprima todos os números primos entre A e B (inclusive).

// Importação da biblioteca "dart:io"
import 'dart:io';

void main() {
  print("|~~~~~|" * 7);
  print("");
  print("Intervalo de primos");
  print("");
  print("|~~~~~|" * 7);
  print("");

  while (true) {
    String resultado = ""; // guarda os números primos encontrados
    int? inicio;
    int? fim;

    while (true) {
      stdout.write("Digite o número de início do intervalo: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      inicio = int.tryParse(entrada.replaceAll(" ", ""));
      if (inicio == null || inicio.isNegative) {
        print("Por favor digite um número inteiro positivo!");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    while (true) {
      stdout.write("Digite o número de fim do intervalo: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("|~~~~~|" * 7);
      fim = int.tryParse(entrada.replaceAll(" ", ""));
      if (fim == null || fim.isNegative) {
        print("Por favor digite um número válido");
        print("");
        print("|~~~~~|" * 7);
        print("");
        continue;
      } else {
        print("");
        break;
      }
    }

    for (int i = inicio; i <= fim; i++) {
      if (i < 2) continue; // 0 e 1 não são primos

      bool primo = true; // assume que é primo até provar o contrário

      // verifica se existe algum divisor além de 1 e dele mesmo
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          primo = false;
          break; // achou divisor = não é primo
        }
      }

      if (primo) {
        resultado += "$i, ";
      }
    }

    if (resultado.isEmpty) {
      print("Não há números primos entre $inicio e $fim.");
    } else {
      print("Os números primos entre $inicio e $fim são:");
      print(
        resultado.substring(0, resultado.length - 2),
      ); // remove vírgula final
    }
    print("");
    print("|~~~~~|" * 7);

    print("");
    stdout.write("Deseja realizar outro cálculo? (s/n): ");
    String resposta = stdin.readLineSync()!.trim().toLowerCase();
    print("");
    print("|~~~~~|" * 7);
    print("");

    if (resposta == 'n') {
      print("Obrigado por usar! Encerrando o programa...");
      print("");
      print("|~~~~~|" * 7);
      break;
    }
  }
}

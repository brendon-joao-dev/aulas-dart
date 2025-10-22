// A - Números primos no intervalo: Faça um programa que receba dois números inteiros A e B e imprima todos os números primos entre A e B (inclusive).

// Importação da biblioteca "dart:io"
import "dart:io";

void main () {
  // Título estático (Só aparece uma vez)
  print("|~~~~~|"*7);
  print("Números Primos entre A e B");
  print("|~~~~~|"*7);

  // Declaração de variáveis
  String? continuar;
  String? entradaA;
  String? entradaB;
  int inicio;
  int fim;
  String validador;
  String? resultado;

  // Início do looping do sistema
  while (true) {
    // Looping do valor de início do intervalo
    while (true) {
      stdout.write("Digite o valor de início do intervalo: ");
      entradaA = stdin.readLineSync();
      print("|~~~~~|*7");

      // Verifica se a variável "entradaA" é diferente de null
      if (entradaA != null) {
        validador = entradaA.replaceAll(" ", ""); // Remove todos os espaços vazios da string

        // Verifica se a variável "validador" ao tentar ser convertida para o tipo int retorna algo diferente de nulo
        if (int.tryParse(validador) != null) {
          inicio = int.parse(validador); // Converte o valor validado de "entradaA" que está em "validador" para o tipo inteiro, e salva na variável inicio
          break; // Quebra  looping do valor de início
        } else {
          print("Por favor digite um número inteiro!");
          print("|~~~~~|*7");
          continue; // Continua o looping do valor de início
        }
      } else {
        print("Por favor digite algo!");
        print("|~~~~~|*7");
        continue; // Continua o looping do valor de início
      }
    }
    // OBS: O valor de início assim como as outras são feitas em loopings independentes e não no principal
    // pois dessa forma é possível validar e se necessário repetir, cada entrada individualmente

    // Looping do valor de fim do intervalor
    while (true) {
      stdout.write("Digite o valor final do intervalo: ");
      entradaB = stdin.readLineSync();
      print("|~~~~~|*7");

      if (entradaB != null) {
        validador = entradaB.replaceAll(" ", "");

        if (int.tryParse(validador) != null) {
          fim = int.parse(validador);
          break;
        } else {
          print("Por favor digite um número inteiro!");
          print("|~~~~~|*7");
          continue;
        }
      } else {
        print("Por favor digite algo!");
        print("|~~~~~|*7");
        continue;
      }
    }

    // Prossegui para o processamento após o início e fim do intervalo serem definidos
    // for c in range(2,100):
    // for m in range(2,c):
    //     if c % m == 0:
    //         break
    // else:
    //     print('----')
    //     print(c)
    for (int i = inicio; i <= fim; i++) {
      for (int j = inicio; j <= i; j++) {
        if (i % j == 0) {
          break;
        } else {
          resultado += "$i ";
        }
      } 
    }

    // Entrada da opção para o usuário continuar o programa
    stdout.write("Deseja ver outro intervalo de primos? (s/n)");
    continuar = stdin.readLineSync();
    print("|~~~~~|"*7);

    // Verifica se a variável "continuar" não é nula
    if (continuar != null) {
      validador = continuar.replaceAll(" ", ""); // Remove todos os espaços vazios da string
      validador = validador.toLowerCase(); // Converte a string para letras minúsculas
      continuar = validador; // Devolve o valor validado a variável original

      // Verifica se a variável "continuar" (validada) é igual a "s"
      if (continuar == "s") {
        continue; // Reinicia o programa
      } else {
        break; // Sai do programa
      }
    } else {
      break; // Sai do programa se o usuário não digitar nada
    }
  }
}
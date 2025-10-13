// Importação de bibliotecas
import "dart:io";

// Declaração de variáveis (globais)
var a;
var b;
double? soma;
double? subtracao;
double? produto;
double? divisao;
double? restoDivisao;
int? divInteira;

void main() {
  print("~"*30);
  print("Calculadora Automática");
  print("~"*30);
  
  // Looping do programa
  while (true) {
    // Entrada de dados
    stdout.write("Entre com valor de A: ");
    a = stdin.readLineSync()!;
    print("~"*30);

    // Validação de número
    if (a != null && a.isNotEmpty) {
      if (double.tryParse(a) != null) {
        a = double.tryParse(a);
      } else {
        print("Por favor digite um número!");
        print("~"*30);
        continue;
      }
    } else {
      print("Por favor digite algo!");
      print("~"*30);
      continue;
    }

    // Looping da segunda entrada
    while (true) {
      stdout.write("Entre com o valor de B: ");
      b = stdin.readLineSync();
      print("~"*30);

      // Validação de número
      if (b != null && b.isNotEmpty) {
        if (double.tryParse(b) != null) {
          b = double.tryParse(b);
          break;
        } else {
          print("Por favor digite um número!");
          print("~"*30);
          continue;
        }
      } else {
        print("Por favor digite algo!");
        print("~"*30);
        continue;
      }
    }

    // Cálculos
    soma = a + b;

    subtracao = a - b;

    produto = a * b;
    
    if (b != 0) {
      divisao = a / b;

      divInteira = a ~/ b;

      restoDivisao = a % b;
    }

    print("~"*30);
    print("A soma de $a + $b = $soma");
    print("A subtração de $a - $b = $subtracao");
    print("A multiplicação de $a × $b = $produto");
    if (b != 0) {
      print("A divisão de $a ÷ $b = ${divisao!.toStringAsFixed(4)}");
      print("O resto da divisão de $a % $b = $restoDivisao");
      print("A divisão inteira de $a ~/ $b = $divInteira");
    } else {
      print("ERRO: Divisão por zero não permitida!");
    }
    print("~"*30);
    break;
  }
}
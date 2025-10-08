import "dart:io";

// Variáveis globais
var a?;

void main() {
  while (true) {
    print("~"*30);
    print("Calculadora Automática");
    print("~"*30);
    print("");

    try {
      stdout.write("Entre com valor de A: ");
      a = stdin.readLineSync()!;
      a = int.parse(a);
      print("Valor válido");
      print(a);
    } catch (e) {
      print("Valor inválido");
    }

    // stdout.write("Entre com o valor de B: ");
    // var b = stdin.readLineSync();

    // if (int())

    // // Operador de soma
    // int soma = a + b;
    // // Operador de subtração
    // int subtracao = a - b;
    // // Operador de produto
    // int produto = a * b;
    // // Operador de divisão
    // double divisao = a / b;
    // // Operador de divisão inteira
    // int divInteira = a ~/ b;
    // // Operadkr de resto da divisão
    // int restoDivisao = a % b;

    // print("-" * 70);
    // print("A soma de $a + $b = $soma");
    // print("A multiplicação de $a × $b = $produto");
    // print("A subtração de $a - $b = $subtracao");
    // print("A divisão de $a ÷ $b = ${divisao.toStringAsFixed(2)}");
    // print("O resto da divisão de $a % $b = $restoDivisao");
    // print("A divisão inteira de $a ~/ $b = $divInteira");
    // print("-" * 70);
    break;
  }
}
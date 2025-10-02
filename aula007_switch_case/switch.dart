import "dart:io";
void main() {
  print("1 - Número par");
  print("2 - Maior número");
  print("3 - Sair");

  stdout.write("Digite uma opção: ");
  var opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      print("Verificar se é par");

      stdout.write("Digite um número: ");
      var numero = int.parse(stdin.readLineSync()!);

      if (numero % 2 == 0) {
        print("O número $numero é par!");
      } else {
        print("O número $numero é ímpar!");
      }
      break; // Interrompe o case
    case 2:
      print("Verificar se o número é maior que");

      stdout.write("Digite o valor de A: ");
      var a = int.parse(stdin.readLineSync()!);

      stdout.write("Digite o valor de B: ");
      var b = int.parse(stdin.readLineSync()!);

      if (a > b) {
        print("O número $a é maior que o número $b!");
      } else if (a < b) {
        print("O número $a é menor que o número $b!");
      } else {
        print("Os números são iguais!");
      }
      break; // Interrompe o case
    case 3:
      print("Saindo do programa...");
      break;
    default:
      print("Fora do intervalo de opções!");
  }
}

import "dart:io";
void main() {
  // Declaração de variáveis inteiras
  stdout.write("Entre com o valor de A: ");
  var a = double.parse(stdin.readLineSync()!);

  stdout.write("Entre com o valor de B: ");
  var b = double.parse(stdin.readLineSync()!);

  // Condicional simples com else opicional
  print("Testando se 'a' é maior que 'b'");
  if (a > b) {
    print("Informação verdadeira!");
  } else {
    print("Informação falsa!");
  }

  print("Testando se 'John' é diferente 'Jane'");
  // Comparação de strings
  String nome = "John";

  if (nome != "Jane") {
    print("Os nomes são diferentes!");
  } else {
    print("Os nomes são iguais");
  }

  // Condicionais encadeadas: avaliando a média de um aluno
  double media = 4;
  print("Testando uma média declarada ( ${media} )");

  if (media < 0 || media > 10) {
    print("Média inválida! Digite um valor entre 0 e 10.");
  } else if (media >= 7.5) {
    print("O aluno foi aprovado!");
  } else if (media >= 5) {
    print("O aluno está em recuperação!");
  } else {
    print("O aluno foi reprovado!");
  }
}
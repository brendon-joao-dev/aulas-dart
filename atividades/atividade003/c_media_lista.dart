// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e,
// em seguida, calcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).

// Importação da biblioteca dart:io - Serve para entrada e saída de dados
import "dart:io";
import "dart:math";

// Função principal do programa
void main() {
  // Título exibido apenas uma vez
  print("<=====>" * 7);
  print("");
  print("Cálcula a média de uma lista de notas removendo a menor");
  print("");

  // Declaração de variáveis
  String continuar;
  String entrada;
  double menor;
  double media;
  double soma;
  List<String> entradas;
  List<double> notas;
  List<double> notas_finais;

  // Looping para permitir repetição do programa
  while (true) {
    // <+++++++ ENTRADA DE DADOS +++++++>
    print("<+++++>" * 7);
    print("");
    while (true) {
      stdout.write("Digite uma sequencia de notas separados por espaço: ");
      entrada = stdin.readLineSync()!;
      print("");

      entradas = entrada.split(" ");

      notas = entradas.map((entrada) => double.tryParse(entrada.replaceAll(",", ".")) ?? 0).toList();

      if (notas.isEmpty) {
        print("Por favo digite números válidos!");
        print("");
        continue;
      } else {
        break;
      }
    }
    print("<+++++>" * 7);
    print("");

    // <======= PROCESSAMENTO =======>
    // Encontra o menor número de uma lista reduzindo de acordo com o menor entre dois elementos
    menor = notas.reduce(min);

    // Copia a lista notas para a lista notas_finais
    notas_finais = [...notas];

    // Remove o menor número das notas_finais
    notas_finais.remove(menor);

    // Soma todas as notas para um total
    soma = notas_finais.reduce((acumulador, numero) => acumulador + numero);

    // Calcula a media das notas
    media = soma / notas_finais.length;

    // <------- SAÍDA DE DADOS ------->
    print("<----->" * 7);
    print("");
    print("A lista de notas é: ");
    notas.forEach((elemento) => stdout.write("$elemento, "));
    print("");
    print("");
    print("A nota removida foi: $menor");
    print("");
    print("A média das notas sem a menor nota é: $media");
    print("");
    print("<----->" * 7);
    print("");

    // Permitir repetição
    stdout.write("Deseja repetir o programa? (s/n) ");
    continuar = stdin.readLineSync()!.toLowerCase().replaceAll(" ", "");
    print("");

    print("<=====>" * 7);
    if (continuar == "s") {
      // Reinicia o programa
      continue;
    } else {
      // Saí do programa
      break;
    }
  }
}

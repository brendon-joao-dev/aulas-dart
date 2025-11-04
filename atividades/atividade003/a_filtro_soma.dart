// 1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e,
// simultaneamente, maiores que 10. Após a filtragem, deve-se calcular a soma total desses números restantes.

// Importação da biblioteca dart:io - Serve para entrada e saída de dados
import "dart:io";

// Função principal do programa
void main() {
  // Título exibido apenas uma vez
  print("<=====>" * 7);
  print("");
  print("Filtra números pares e soma eles");
  print("");

  // Declaração de variáveis
  String entrada;
  String continuar;
  int soma;
  List<String> entradas;
  List<int> intervalo;
  List<int> intervalo_filtrado;

  // Looping para permitir repetição do programa
  while (true) {
    // Limpeza de variáveis - reinicia as variáveis, caso o programa já tenha rodado mais de uma ves
    soma = 0;
    intervalo = [];
    intervalo_filtrado = [];

    // <+++++++ ENTRADA DE DADOS +++++++>
    print("<+++++>" * 7);
    print("");
    while (true) {
      stdout.write("Digite uma sequencia de números separados por espaço: ");
      entrada = stdin.readLineSync()!;
      print("");

      // Divide a entrada a cada espaço
      entradas = entrada.split(" ");

      // Transforma cada entrada em inteiro ou substitui por zero
      intervalo = entradas.map((p) => int.tryParse(p) ?? 0).toList();

      if (intervalo.isEmpty) {
        print("Por favor digite números válidos!");
        print(" ");
        continue;
      } else {
        break;
      }
    }
    print("<+++++>" * 7);
    print("");

    // <======= PROCESSAMENTO =======>
    // Filtra os números pares maiores que 10
    // Percorre cada valor do intervalo e verifica se ele é par e maior que 10
    // Salva esse resultado em intervalo_filtrado
    intervalo_filtrado = intervalo
        .where((numero) => numero % 2 == 0 && numero > 10)
        .toList();

    // try... catch para operação que pode dar erro
    try {
      // Pode dar erro se nenhum número tiver passado no filtro
      // List.reduce: Reduz todos os elementos da lista a um só - A função passada como argumento indica como agrupar os elementos
      // (soma, numero): soma - variável acumuladora, numero - cada elemento
      soma = intervalo_filtrado.reduce((soma, numero) => soma + numero);
    } catch (e) {
      // Mensagem de erro pro usuário
      print(
        "Intervalo fora do alcance, o intervalo deve conter valores maiores que 10!",
      );
      print("");
    }

    // <------- SAÍDA DE DADOS ------->
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

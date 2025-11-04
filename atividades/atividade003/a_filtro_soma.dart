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
  int? inicio;
  int? fim;
  int soma;
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
      // Mensagem da entrada
      stdout.write("Digite o início do intervalo: ");
      // Entrada sendo salva em uma variável
      entrada = stdin.readLineSync()!;
      print("");
      // Casting - Convertendo o tipo de entrada e salvando em outra variável
      inicio = int.tryParse(entrada.replaceAll(", ", ".").replaceAll(" ", ""));

      // Verificando se a entrada segui o padrão desejado - Um número inteiro positivo
      if (inicio == null || inicio.isNegative) {
        // Mensagem de erro pro usuário
        print("Por favor digite um início inteiro positivo!");
        print("");
        // Repete a entrada
        continue;
      } else {
        // Quebra o looping da entrada e continua o programa
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

    // <======= PROCESSAMENTO =======>
    // Gera o intervalo de número do inicio ao fim que o usuário inseriu (ambos inclusive)
    for (int i = inicio; i <= fim; i++) {
      intervalo.add(i);
    }

    // Filtra os números pares maiores que 10
    intervalo_filtrado = intervalo
        .where((numero) => numero % 2 == 0 && numero > 10)
        .toList();

    // try... catch para operação que pode dar erro
    try {
      // Pode dar erro se nenhum número tiver passado no filtro
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

import "dart:io";
import "dart:math";

// Função usando Generics (<T>) para se comportar de acordo com o tipo passado:
List<T> entradaIntervalo<T>({
  int quantidade_itens = 0, // Número de itens que a função deve retornar
  String elementoDesejado = "números inteiros", // Mensagem de elemento que deve ser inserido pelo usuário
}) {
  // Declaração de variáveis
  List<String> entradas;
  List<T?> intervaloValidando; // Lista do tipo passado
  bool todosValidos = true; 

  // Looping pra validação:
  while (true) {
    todosValidos = true;
    // Entrada:
    stdout.write(
      "Digite uma sequência de ${elementoDesejado} separados por espaço: ",
    );
    String? entrada = stdin.readLineSync();
    print("");

    // Se o usuário digitar algo remove os espaços do começo e final e separa a entrada em vários elementos
    if (entrada != null) {
      entradas = entrada.trim().split(" ");
    } else {
      print("Por favor digite algo!");
      print("");
      continue;
    }

    // Válida de acordo com os possíveis tipos da função (int, double e String)
    intervaloValidando = entradas.map((item) {
      if (T == int) {
        return int.tryParse(item) as T?;
      }
      if (T == double) {
        return double.tryParse(item) as T?;
      }
      if (T == String) {
        return item as T?;
      }
    }).toList();

    // Se o usuário passar uma quantidade de itens determinada, válida essa quantidade
    if (quantidade_itens != 0) {
      if (quantidade_itens != intervaloValidando.length) {
        print("Por favor digite ${quantidade_itens} ${elementoDesejado}!");
        print("");
        continue;
      }
    }

    // Diz ao usuário qual o valor inválido entre os informados
    for (int i = 0; i < intervaloValidando.length; i++) {
      if (intervaloValidando[i] == null) {
        print("O ${i + 1}° número digitado é inválido!");
        print("");
        todosValidos = false;
        break;
      } else {
        continue;
      }
    }

    // Se todosValidos for true até aqui, retorna a função como uma lista do tipo passado
    if (todosValidos) {
      List<T> intervalo = intervaloValidando.cast<T>();
      return intervalo;
    }
  }
}

// Função que exibe todos os elementos de uma lista:
void exibirIntervalo(intervalo) {
  // forEach que percorre todos os elementos e exibe todos na mesma linha com stdout
  intervalo.forEach((elemento) => stdout.write("$elemento, "));
}

// Função que pergunta ao usuário se quer continuar o programa, retornando true ou false:
bool continuarPrograma() {
  String continuar = "";
  while (true) {
    stdout.write("Deseja executar o programa novamente? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase().trim();
    print("");

    if (continuar == "s") {
      return true;
    } else if (continuar == "n") {
      return false;
    } else {
      print("Por favor digite 's' para sim ou 'n' para não!\n");
      continue;
    }
  }
}

// Função que filtra elementos de acordo com uma função de filtro e soma todos os elementos em apenas um:
int filtraSoma({required List<int> lista, required Function filtro}) {
  List<int> filtrada = lista.where((elemento) => filtro(elemento)).toList();
  int valorUnico = filtrada.reduce((soma, numero) => soma += numero);
  return valorUnico;
}

// Receb uma lista de um tipo qualquer (usa Generics) e retorna apenas os elementos únicos dessa lista:
List<T> eliminarDuplicatas<T>({required List<T> listaComDuplicatas}) {
  // Converte a lista para Set, eliminando as duplicatas
  Set<T> setUnicos = listaComDuplicatas.toSet();
  // Converte de volta para List
  List<T> listaUnicos = setUnicos.toList();
  // Ordena a lista
  listaUnicos.sort();
  // Retorna a lista
  return listaUnicos;
}

// Calcula a média de uma lista de elementos qualquer:
double calcularMedia({required List<double> elementos}) {
  // Reduz todos os elementos a apenas um
  double soma = elementos.reduce((somadas, elemento) => somadas += elemento);
  // Calcula a média dividindo a soma pelo número de elementos
  double media = soma / elementos.length;
  // Retorna a média
  return media;
}

// Função que recebe uma função de filtro e uma de modificação,
// filtra a lista original e depois modifica ela,
// retornando a lista resultante:
List filtraModifica({
  required List lista,
  required Function filtro, 
  required Function modificacao,
}) {
  // Filtra a lista
  List filtrada = lista.where((elemento) => filtro(elemento)).toList();
  // Modifica a lista
  List modificada = filtrada.map((elemento) => modificacao(elemento)).toList();
  // Retorna a lista
  return modificada;
}

// Função que encontra o maior elemento de uma lista de números:
double maxList({required List<double> listaNumeros}) {
  double maior = listaNumeros.reduce(max);
  return maior;
}

// Filtra palavras de acordo com uma letra inicial e um número de caracteres:
List<String> filtraPalavras({
  required List<String> listaPalavras,
  required String letraIncial,
  required int numeroCaracteres,
}) {
  List<String> palavras_filtradas = listaPalavras
      .where(
        (palavra) =>
            palavra.length >= numeroCaracteres &&
            palavra[0].toLowerCase() == letraIncial.toLowerCase(),
      )
      .toList();
  return palavras_filtradas;
}

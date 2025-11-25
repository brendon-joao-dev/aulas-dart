void main() {
  print("-" * 70);
  print("EXEMPLO DE FUNÇÃO ANÔNIMA: BÁSICA");
  print("-" * 70);

  List<int> numeros = [1, 2, 3, 4, 5];

  // Em uma varredura forEach para retornar o dobro dos números
  numeros.forEach((numero) {
    print(numero * 2);
  });

  print("-" * 70);
  print("EXEMPLO DE FUNÇÃO ANÔNIMA: INTERMEDIÁRIA");
  print("-" * 70);

  var lista = [1, 2, 3, 4, 5];

  // Utilizada com o método map()
  var novaLista = lista.map((numero) => numero * 2).toList();

  print(novaLista);

  print("-" * 70);
  print("EXEMPLO DE FUNÇÃO ANÔNIMA: AVANÇADA");
  print("-" * 70);

  var lista2 = [1, 2, 3, 4, 5];

  // .isOdd é uma propriedade fornecida pela classe int em Dart
  // que retorna true se o número for ímpar e false se for par.
  var novaLista2 = lista
      .where((numero) {
        return numero.isOdd;
      }) // Busca
      .map((numero) => numero * 2) // Retorno com cálculo
      .toList();

      print(novaLista2);
}

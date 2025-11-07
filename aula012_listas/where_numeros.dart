void main() {
  print("-" * 70);
  print("EXEMPLO DE USO DO WHERE()");
  print("=" * 70);

  // Lista de números inteiros
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // where() -> filtras os elementos que atendem a uma condição
  // (num) => num % 2 == 0 -> função anônima que retorna true para números pares
  // .toList() -> converte o resultado (Iterable) de volta para uma lista
  List<int> numerosPares = numeros.where((num) => num % 2 == 0).toList();

  // Saída
  print("Lista original: $numeros");
  print("Nova lista de números pares: $numerosPares"); // [2, 4, 6, 8, 10]
  print("-" * 70);
}

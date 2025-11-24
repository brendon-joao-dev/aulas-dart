void main() {
  print("-" * 70);
  print("EXEMPLO DE WHERE(), MAP() E REDUCE() NA FILTRAGEM");
  print("=" * 70);

  // Map de números: chave é uma String e valor é um int
  Map<String, int> numeros = {
    "um": 1,
    "dois": 2,
    "três": 3,
    "quatro": 4,
    "cinco": 5,
  };

  // Encadeamento de métodos funcionais:
  int soma = numeros
      .values //Pegamos apenas os valores do Map -> [1, 2, 3, 4, 5]
      .where((num) => num % 2 == 0) // Filtra: mantém apenas os pares -> [2, 4]
      .map(
        (num) => num * 2,
      ) // Transforma: multiplica cada valor por 2 -> [4, 8]
      .reduce(
        (soma, num) => soma + num,
      ); // Reduz: soma todos os elementos -> 12

  // Saída
  print("Elementos usados no resultado: $numeros");
  print("Resultado final: $soma");
  print("=" * 70);

  print("-" * 70);
  print("EXEMPLO DE WHERE(), MAP() E REDUCE() COM STRINGS");
  print("=" * 70);

  // Map pessoas: chave é o nome e valor é a idade
  Map<String, int> pessoas = {
    "Ana": 17,
    "Bruno": 22,
    "Carla": 19,
    "Diego": 25,
    "Elisa": 16,
  };

  // Encadeamento de métodos funcionais:
  // Objetivo pegar nome de pessoas adultas, colocar em maiúsculas e
  // concatenar em uma única String

  // Entrada do Map (nome, idade)
  String nomeAdultos = pessoas.entries
      // Filtra: apenas maiores de idade -> Bruno, Caral, Diego
      .where((entrada) => entrada.value >= 18)
      // Transforma: nomes em maiúsculas -> BRUNO, CARLA, DIEGO
      .map((entrada) => entrada.key.toUpperCase())
      // Reduz: concatena os nomes -> "BRUNO, CARLA, DIEGO"
      .reduce((acumulador, nome) => "$acumulador, $nome");

  // Saída
  print("Pessoas analisadas: $pessoas");
  print("Nomes das pessoas adultas: $nomeAdultos"); // BRUNO, CARLA, DIEGO
  print("=" * 70);
}

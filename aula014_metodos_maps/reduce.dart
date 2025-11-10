void main() {
  Map<String, int> meuMap = {"a": 1, "b": 2, "c": 3, "d": 4};

  print("-" * 70);
  print("VARREDURA COM O MÉTODO REDUCE()");
  print("-" * 70);

  dynamic somatorio = meuMap.values.reduce((v, e) => v + e);
  // Como funciona o método reduce():
  // - O método percorre todos os valores do Map (no caso: 1, 2, 3, 4)
  // - O primeiro valor (1) é usado como inicial (v)
  // - Em cada iteração:
  //    - v = acumulador (resultado parcial)
  //    - e = elemento atual

  // Passo a passo:
  //  v=1, e=2 -> 1 + 2 = 3
  //  v=3, e=3 -> 3 + 3 = 6
  //  v=6, e=4 -> 6 + 4 = 10

  // Reultado final: 10

  print("Lista de valores: $meuMap");
  print("A soma dos valores é: $somatorio");
  print("-" * 70);

  Map<String, String> palavras = {
    "p1": "Dart",
    "p2": "é",
    "p3": "uma",
    "p4": "linguagem",
    "p5": "incrível",
  };

  print("-" * 70);
  print("CONCATENANDO STRINGS COM O MÉTODO REDUCE()");
  print("-" * 70);

  String frase = palavras.values.reduce((v, e) => "$v $e");
  // Como funciona o método reduce():
  // - O método percorre todos os valores do Map
  // (no caso: "Dart", "é", "uma", "Linguagem", "incrível")
  // - O primeiro valor ("Dart") é usado como inicial (v)
  // - Em cada iteração:
  //    v = acumulador (resultado parcial)
  //    e = elemento atual
  // - A função concatena v e e com um espaço entre eles

  // Passo a passo:
  //  v="Dart", e="é" -> "Dart é"
  //  v="Dart é", e="uma" -> "Dart é uma"
  //  v="Dart é uma", e="linguagem" -> "Dart é uma linguagem"
  //  v="Dart é uma linguagem", e="incrível" -> "Dart é uma linguagem incrível"

  // Resultado final: "Dart é uma linguagem incrível"

  print("Partes da frase: $palavras");
  print("Frase completa: $frase");
  print("-" * 70);
}

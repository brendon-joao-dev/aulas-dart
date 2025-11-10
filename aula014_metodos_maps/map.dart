void main() {
  print("=" * 70);
  print("EXEMPLO ORIGINAL: VARREDURA COM O MÉTODO map()");
  print("=" * 70);

  // Criando um Map simples (estrutura chave -> valor)
  var meuMap = {"a": 1, "b": 2, "c": 3};

  // Aqui usamos meuMap.entries para acessar cada par (chaev, valor)
  // O método .map() transforma cada entrada e, uma String no formato:
  // "chave: valor"
  var resultado = meuMap.entries.map(
    (entrada) => "${entrada.key}: ${entrada.value}",
  );

  // O resultado de .map() é um Iterable, por isso usamos .join()
  print("Map transformado em String: ${resultado.join(", ")}");
  print("-" * 70);

  print("EXEMPLO 1: ALTERANDO VALORES COM map()");
  print("=" * 70);

  var precos = {"banana": 2.5, "maçã": 3.0, "laranja": 2.0};

  // Criando um novo Map com 10% de desconto
  var precosComDesconto = precos.map((chave, valor) {
    var novoValor = valor * 0.9;
    return MapEntry(chave, novoValor);
  });

  print("Original: $precos");
  print("Com desconto: $precosComDesconto");
  print("-" * 70);

  print("EXEMPLO 2: CONVERTENDO MAP EM LISTA DE STRINGS");
  print("=" * 70);

  var estoque = {"caneta": 50, "lápis": 80, "borracha": 25};

  // Convertendo cada par chave/valor em uma frase descritiva
  var descricoes = estoque.entries.map(
    (item) => "Temos ${item.value} unidades de ${item.key}",
  );

  // .toList() transforma o Iterable em uma lista
  print(descricoes.toList());
  print("-" * 70);
}

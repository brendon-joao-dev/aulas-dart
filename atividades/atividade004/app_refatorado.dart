// Importação de bibliotecas:
import "dart:io";

// Estrutura de dados:
// - List: carrinho
//      - Map: informações do produto
//        - "nome": String - nome do produto
//        - "preco": double - preço unitário daquele produto
//        - "quantidade": int - quantidade daquele produto
//        - "subtotal": double - subtotal atual daquele produto
List<Map<String, dynamic>> carrinho = [];

void decoracao() {
  print("");
  print("=" * 70);
  print("");
}

void pressioneContinuar() {
  stdout.write("Pressione enter para continuar...");
  stdin.readLineSync();
  decoracao();
}

T entrada<T>({
  String mensagemEntrada = "Entre com um valor: ",
  String mensagemInvalida = "Por favor entre com algum valor!",
  String mensagemNegativo = "Por favor entre com um número positivo",
  bool positivo = false,
}) {
  print("=" * 70);
  print("");
  while (true) {
    stdout.write(mensagemEntrada);
    String entrada = stdin.readLineSync() ?? "";
    decoracao();

    if (T == String) {
      if (!entrada.trim().isEmpty) {
        return entrada as T;
      } else {
        print(mensagemInvalida);
        pressioneContinuar();
        continue;
      }
    }

    if (T == double) {
      if (positivo) {
        if (double.tryParse(entrada) != null &&
            !double.parse(entrada).isNegative) {
          return double.parse(entrada) as T;
        } else {
          print(mensagemNegativo);
          pressioneContinuar();
          continue;
        }
      } else {
        if (double.tryParse(entrada) != null) {
          return double.parse(entrada) as T;
        } else {
          print(mensagemInvalida);
          pressioneContinuar();
          continue;
        }
      }
    }

    if (T == int) {
      if (positivo) {
        if (int.tryParse(entrada) != null && !int.parse(entrada).isNegative) {
          return int.parse(entrada) as T;
        } else {
          print(mensagemNegativo);
          pressioneContinuar();
          continue;
        }
      } else {
        if (int.tryParse(entrada) != null) {
          return int.tryParse(entrada) as T;
        } else {
          print(mensagemInvalida);
          pressioneContinuar();
          continue;
        }
      }
    }
  }
}

bool cadastrarProduto({
  List<Map<String, dynamic>> carrinho = [],
  String nome = "",
  double preco = 0.0,
  int quantidade = 0,
}) {
  // Verifica se o produto existe no carrinho:
  if (carrinho.where((produto) => produto["nome"] == nome).toList().length ==
      0) {
    double subtotal = preco * quantidade;

    Map<String, dynamic> produto = {
      "nome": nome,
      "preco": preco,
      "quantidade": quantidade,
      "subtotal": subtotal,
    };

    print("Produto $nome adicionado com sucesso!");
    decoracao();
    return true;
  } else {
    print("O produto já está no carrinho!");
    pressioneContinuar();
    return false;
  }
}

// exibirCarrinho
// modificarProduto
// removerProduto
// resumoCarrinho

// Importação de bibliotecas:
import "dart:io";

// Estrutura de dados:
// - Map: carrinho
//    - "nome": Map - nome do produto
//      - Map: informações do produto
//        - "preco": double - preço unitário daquele produto
//        - "quantidade": int - quantidade daquele produto
//        - "subtotal": double - subtotal atual daquele produto
Map<String, Map<String, dynamic>> carrinho = {};

// Função principal do sistema:
void main() {
  // Looping que segura o sistema até o usuário querer sair:
  while (true) {
    print("=" * 70);
    print("");
    print("Bem vindo ao carrinho da loja DartShop!");
    print("");
    print("=" * 70);
    print("");
    print("0 - Sair do sistema");
    print("1 - Adicionar produto");
    print("2 - Visualizar carrinho");
    print("3 - Modificar produtos");
    print("4 - Remover produtos");
    print("");
    print("=" * 70);
    print("");

    stdout.write("Digite o número da opção desejada: ");
    int? opcao = int.tryParse(stdin.readLineSync() ?? "");
    print("=" * 70);
    print("");

    if (opcao != null) {
      if (opcao == 0) {
        print("Obrigado por usar nosso sistem!");
        print("Saindo do sistema...");
        print("");
        print("=" * 70);
        print("");
        break;
      } else if (opcao == 1) {
        print("Adição de produtos");
        print("");
        print("=" * 70);
        print("");
        // Looping para permitir inserção de multiplos produtos:
        while (true) {
          // Variáveis com valores de cada chave:
          String nome = "";
          double? preco = 0.0;
          int? quantidade = 0;
          double subtotal = 0.0;

          // Looping de entrada do nome:
          while (true) {
            // Entrada em si:
            stdout.write("Digite o nome do produto: ");
            nome = stdin.readLineSync() ?? "";
            print("");
            print("=" * 70);
            print("");

            // Validação de valores vazios:
            if (nome.trim().isEmpty) {
              print("Por favor digite algo como nome do produto!");
              stdout.write("Pressione enter para continuar...");
              stdin.readLineSync();
              print("");
              print("=" * 70);
              print("");
              continue;
            } else {
              // Aqui o valor é válido
              break;
            }
          }

          // Looping de entrada do preco:
          while (true) {
            // Entrada em si:
            stdout.write("Digite o preço do produto: ");
            preco = double.tryParse(stdin.readLineSync() ?? "");
            print("");
            print("=" * 70);
            print("");

            // Validação de valores inválidos (Strings):
            if (preco == null) {
              print("Por favor digite um número decimal como preço!");
              stdout.write("Pressione enter para continuar...");
              stdin.readLineSync();
              print("");
              print("=" * 70);
              print("");
              continue;
            }

            // Validação de valores negativos e zero:
            if (preco == 0 || preco.isNegative) {
              print("Por favor digite um preço positivo diferente de zero!");
              stdout.write("Pressione enter para continuar...");
              stdin.readLineSync();
              print("");
              print("=" * 70);
              print("");
              continue;
            } else {
              // Aqui o valor é válido
              break;
            }
          }

          // Looping de entrada da quantidade:
          while (true) {
            // Entrada em si:
            stdout.write("Digite a quantidade do produto: ");
            quantidade = int.tryParse(stdin.readLineSync() ?? "");
            print("");
            print("=" * 70);
            print("");

            // Validação de valores inválidos (Strings):
            if (quantidade == null) {
              print("Por favor digite um número inteiro como quantidade!");
              stdout.write("Pressione enter para continuar...");
              stdin.readLineSync();
              print("");
              print("=" * 70);
              print("");
              continue;
            }

            // Validação de valores negativos e zero:
            if (quantidade == 0 || quantidade.isNegative) {
              print(
                "Por favor digite uma quantidade positivo diferente de zero!",
              );
              stdout.write("Pressione enter para continuar...");
              stdin.readLineSync();
              print("");
              print("=" * 70);
              print("");
              continue;
            } else {
              // Aqui o valor é válido
              break;
            }
          }

          // Aqui todos os valores foram definidos e validados individualmente
          // Cálculo do subtotal:
          subtotal = preco * quantidade;

          // Estruturação do produto:
          Map<String, dynamic> produto = {
            "preco": preco,
            "quantidade": quantidade,
            "subtotal": subtotal,
          };

          // Verifica se o carrinho NÃO possui o produto que está sendo adicionado:
          if (!carrinho.containsKey(nome)) {
            // Adiciona o produto ao carrinho:
            carrinho[nome] = produto;

            print("Produto $nome adicionado com sucesso!");
            print("");
            print("=" * 70);
            print("");
          } else {
            print("O produto já está no carrinho!");
            stdout.write("Pressione enter para continuar...");
            stdin.readLineSync();
            print("");
            print("=" * 70);
            print("");
          }

          // Dando ao usuário a opção de adicionar outro produto:
          stdout.write("Deseja adicionar outro produto? (s/n): ");
          String continuar = stdin.readLineSync() ?? "";
          print("");
          print("=" * 70);
          print("");

          if (continuar.toLowerCase().trim() == "s") {
            // Repete o looping de adição de produto
            continue;
          } else {
            // Quebra o looping de adição de produto, voltando ao menu
            break;
          }
        }
      }
    } else if (opcao == 2) {
      print("Visualização de produtos");
      print("");
      print("=" * 70);
      print("");
      carrinho.forEach((nome, informacoes) {
        print("-"*70);
        print("");
        print("Produto: $nome\tpreço: ${informacoes["preco"]}\tquantidade: ${informacoes["quantidade"]}\tsubtotal: ${informacoes["subtotal"]}");
        print("");
        print("-"*70);
        print("");
      });
    } else {
      print("Por favor digite um valor válido como opção!");
      stdout.write("Pressione enter para continuar...");
      stdin.readLineSync();
      print("");
      print("=" * 70);
      print("");
      continue;
    }
  }
}

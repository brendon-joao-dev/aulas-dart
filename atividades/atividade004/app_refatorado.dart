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
    print("5 - Comprar produtos");
    print("");
    print("=" * 70);
    print("");

    stdout.write("Digite o número da opção desejada: ");
    int? opcao = int.tryParse(stdin.readLineSync() ?? "");
    print("");
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
            "nome": nome,
            "preco": preco,
            "quantidade": quantidade,
            "subtotal": subtotal,
          };

          // Verifica se o carrinho NÃO possui o produto que está sendo adicionado:
          if (carrinho
                  .where((produto) => produto["nome"] == nome)
                  .toList()
                  .length ==
              0) {
            // Adiciona o produto ao carrinho:
            carrinho.add(produto);

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

          if (continuar.toLowerCase().trim() == "s") {
            print("=" * 70);
            print("");
            // Repete o looping de adição de produto
            continue;
          } else {
            // Quebra o looping de adição de produto, voltando ao menu
            break;
          }
        }
      } else if (opcao == 2) {
        print("Visualização de produtos");
        print("");
        print("=" * 70);

        // Validação caso não tenha nenhum produto
        if (carrinho.length != 0) {
          int i = 0;
          carrinho.forEach((produto) {
            print("");
            print(
              "ID: ${i + 1} Produto: ${produto["nome"]} Preço: ${produto["preco"]} Quantidade: ${produto["quantidade"]} Subtotal: ${produto["subtotal"]}",
            );
            print("");
            print("-" * 70);
            i++;
          });

          print("");
          stdout.write("Pressione enter para continuar...");
          stdin.readLineSync();
          print("");
          continue;
        } else {
          print("");
          print("Nenhum produto no carrinho!");
          stdout.write("Pressione enter para continuar...");
          stdin.readLineSync();
          print("");
          continue;
        }
      } else if (opcao == 3) {
        print("Modificação de produtos");
        print("");
        print("=" * 70);

        // Looping para permitir a modificação de multiplos produtos:
        while (true) {
          int? id = 0;
          String novo_nome;
          double? novo_preco;
          int? nova_quantidade = 0;
          Map<String, dynamic> produto_alterando;

          // Looping de entrada do ID:
          while (true) {
            // Exibindo produtos do carrinho pro usuário escolher qual alterar:
            if (carrinho.length != 0) {
              int i = 0;
              carrinho.forEach((produto) {
                print("");
                print(
                  "ID: ${i + 1} Produto: ${produto["nome"]} Preço: ${produto["preco"]} Quantidade: ${produto["quantidade"]} Subtotal: ${produto["subtotal"]}",
                );
                print("");
                print("=" * 70);
                print("");
                i++;
              });

              // Entrada em si:
              stdout.write("Digite o ID do produto que quer alterar: ");
              id = int.tryParse(stdin.readLineSync() ?? "");
              print("");
              print("=" * 70);
              print("");

              // Validação de valores inválidos (Strings):
              if (id == null) {
                print("Por favor digite um número inteiro como ID!");
                stdout.write("Pressione enter para continuar...");
                stdin.readLineSync();
                print("");
                print("=" * 70);
                print("");
                continue;
              }

              // Validação de valores negativos e zero:
              if (id == 0 || id.isNegative) {
                print("Por favor digite um ID positivo diferente de zero!");
                stdout.write("Pressione enter para continuar...");
                stdin.readLineSync();
                print("");
                print("=" * 70);
                print("");
                continue;
              }

              // Validação de IDs fora do intervalo de produtos do carrinho:
              if (id > carrinho.length + 1) {
                print(
                  "Por favor digite um ID dentro do intervalo dos produtos!",
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
            } else {
              print("");
              print("Nenhum produto no carrinho!");
              stdout.write("Pressione enter para continuar...");
              stdin.readLineSync();
              print("");
              break;
            }
          }

          if (id != 0 && id != null) {
            produto_alterando = carrinho.removeAt(id - 1);

            print(
              "ID: ${id} Produto: ${produto_alterando["nome"]} Preço: ${produto_alterando["preco"]} Quantidade: ${produto_alterando["quantidade"]} Subtotal: ${produto_alterando["subtotal"]}",
            );
            print("");
            print("=" * 70);
            print("");

            // Looping de entrada do novo nome:
            while (true) {
              // Entrada em si:
              stdout.write(
                "Digite o novo nome do produto ${produto_alterando["nome"]}: ",
              );
              novo_nome = stdin.readLineSync() ?? "";
              print("");
              print("=" * 70);
              print("");

              // Validação de valores vazios:
              if (novo_nome.trim().isEmpty) {
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

            // Looping de entrada do novo preco:
            while (true) {
              // Entrada em si:
              stdout.write(
                "Digite o novo preço do produto ${produto_alterando["nome"]}: ",
              );
              novo_preco = double.tryParse(stdin.readLineSync() ?? "");
              print("");
              print("=" * 70);
              print("");

              // Validação de valores inválidos (Strings):
              if (novo_preco == null) {
                print("Por favor digite um número decimal como preço!");
                stdout.write("Pressione enter para continuar...");
                stdin.readLineSync();
                print("");
                print("=" * 70);
                print("");
                continue;
              }

              // Validação de valores negativos e zero:
              if (novo_preco == 0 || novo_preco.isNegative) {
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

            // Looping de entrada da nova quantidade:
            while (true) {
              // Entrada em si:
              stdout.write(
                "Digite a nova quantidade do produto ${produto_alterando["nome"]}: ",
              );
              nova_quantidade = int.tryParse(stdin.readLineSync() ?? "");
              print("");
              print("=" * 70);
              print("");

              // Validação de valores inválidos (Strings):
              if (nova_quantidade == null) {
                print("Por favor digite um número inteiro como quantidade!");
                stdout.write("Pressione enter para continuar...");
                stdin.readLineSync();
                print("");
                print("=" * 70);
                print("");
                continue;
              }

              // Validação de valores negativos e zero:
              if (nova_quantidade == 0 || nova_quantidade.isNegative) {
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

            produto_alterando.update("nome", (nome) => novo_nome);

            produto_alterando.update("preco", (preco) => novo_preco);

            produto_alterando.update(
              "quantidade",
              (quantidade) => nova_quantidade,
            );

            produto_alterando.update(
              "subtotal",
              (subtotal) => produto_alterando["preco"] * nova_quantidade,
            );

            carrinho.insert(id - 1, produto_alterando);

            print("Produto alterado com sucesso!");
            print("");
            print("=" * 70);
            print("");
          } else {
            print(
              "Por favor adicione produtos ao carrinho para poder modifica-los",
            );
            print("");
          }

          // Dando ao usuário a opção de modificar outro produto:
          stdout.write("Deseja modificar outro produto? (s/n): ");
          String continuar = stdin.readLineSync() ?? "";
          print("");

          if (continuar.toLowerCase().trim() == "s") {
            print("=" * 70);
            print("");
            // Repete o looping de modificação de produto
            continue;
          } else {
            // Quebra o looping de modificação de produto, voltando ao menu
            break;
          }
        }
      } else if (opcao == 4) {
        print("Remoção de produtos");
        print("");
        print("=" * 70);
        // Looping para permitir remoção de multiplos produtos:
        while (true) {
          int? id = 0;
          List<Map<String, dynamic>> produto_removendo;

          // Looping de entrada do ID:
          while (true) {
            // Exibindo produtos do carrinho pro usuário escolher qual remover:
            if (carrinho.length != 0) {
              int i = 0;
              carrinho.forEach((produto) {
                print("");
                print(
                  "ID: ${i + 1} Produto: ${produto["nome"]} Preço: ${produto["preco"]} Quantidade: ${produto["quantidade"]} Subtotal: ${produto["subtotal"]}",
                );
                print("");
                print("=" * 70);
                print("");
                i++;
              });

              // Entrada em si:
              stdout.write("Digite o ID do produto que quer alterar: ");
              id = int.tryParse(stdin.readLineSync() ?? "");
              print("");
              print("=" * 70);
              print("");

              // Validação de valores inválidos (Strings):
              if (id == null) {
                print("Por favor digite um número inteiro como ID!");
                stdout.write("Pressione enter para continuar...");
                stdin.readLineSync();
                print("");
                print("=" * 70);
                print("");
                continue;
              }

              // Validação de valores negativos e zero:
              if (id == 0 || id.isNegative) {
                print("Por favor digite um ID positivo diferente de zero!");
                stdout.write("Pressione enter para continuar...");
                stdin.readLineSync();
                print("");
                print("=" * 70);
                print("");
                continue;
              }

              // Validação de IDs fora do intervalo de produtos do carrinho:
              if (id > carrinho.length + 1) {
                print(
                  "Por favor digite um ID dentro do intervalo dos produtos!",
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
            } else {
              print("");
              print("Nenhum produto no carrinho!");
              stdout.write("Pressione enter para continuar...");
              stdin.readLineSync();
              print("");
              break;
            }
          }

          if (id != 0 && id != null) {
            produto_removendo = carrinho.sublist(id - 1, id);

            print(
              "ID: ${id} Produto: ${produto_removendo[0]["nome"]} Preço: ${produto_removendo[0]["preco"]} Quantidade: ${produto_removendo[0]["quantidade"]} Subtotal: ${produto_removendo[0]["subtotal"]}",
            );
            print("");
            print("=" * 70);
            print("");

            // Pedindo pro usuário confirmar se tem certeza do produto que está removendo:
            stdout.write("Deseja mesmo remover este produto? (s/n): ");
            String confirmacao = stdin.readLineSync() ?? "";
            print("");

            if (confirmacao.toLowerCase().trim() == "s") {
              carrinho.removeAt(id - 1);
              print(
                "Produto ${produto_removendo[0]["nome"]} removido com sucesso!",
              );
              print("");
            } else {
              print("Nenhum produto removido!");
              print("");
              break;
            }
          } else {
            print(
              "Por favor adicione produtos ao carrinho para poder remove-los",
            );
            print("");
          }

          // Dando ao usuário a opção de remover outro produto:
          stdout.write("Deseja remover outro produto? (s/n): ");
          String continuar = stdin.readLineSync() ?? "";
          print("");

          if (continuar.toLowerCase().trim() == "s") {
            print("=" * 70);
            print("");
            // Repete o looping de remoção de produto
            continue;
          } else {
            // Quebra o looping de remoção de produto, voltando ao menu
            break;
          }
        }
      } else if (opcao == 5) {
        print("Compra de produtos");
        print("");
        print("=" * 70);

        int total_unidades = 0;
        int total_itens = 0;
        double valor_total = 0;
        double media_precos_simples = 0;
        double media_precos_ponderada = 0;
        Map<String, dynamic> produto_mais_caro;
        dynamic processamento;

        if (carrinho.length != 0) {
          // Exibe todos os produtos do carrinho
          int i = 0;
          carrinho.forEach((produto) {
            print("");
            print(
              "ID: ${i + 1} Produto: ${produto["nome"]} Preço: ${produto["preco"]} Quantidade: ${produto["quantidade"]} Subtotal: ${produto["subtotal"]}",
            );
            print("");
            print("-" * 70);
            i++;
          });

          // Total de unidades:
          // Filtra somente as quantidades de todos os produtos
          processamento = carrinho
              .map((produto) => produto["quantidade"])
              .toList();
          // Soma todas as quantidades em uma quantidade geral
          total_unidades = processamento.reduce(
            (acumulador, quantidade) => acumulador += quantidade,
          );

          // Total de itens:
          // Cálcula o total de itens diferentes no carrinho (adiciona um pois a lista começa no índice 0)
          total_itens = carrinho.length;

          // Valor total:
          // Filtra somente os subtotais de todos os produtos
          processamento = carrinho
              .map((produto) => produto["subtotal"])
              .toList();
          // Soma todos os subtotais em um total geral
          valor_total = processamento.reduce(
            (acumulador, subtotal) => acumulador += subtotal,
          );

          // Média simples:
          // Filtra somente os preços de todos os produtos
          processamento = carrinho.map((produto) => produto["preco"]).toList();
          // Soma todos os preços
          processamento = processamento.reduce(
            (acumulador, preco) => acumulador += preco,
          );
          media_precos_simples = processamento / total_itens;

          // Média ponderada:
          // Cálcula a média dos preços com base na divisão do valor_total (soma dos subtotais) por total_unidades (número de unidades no carrinho)
          media_precos_ponderada = valor_total / total_unidades;

          // Produto mais caro:
          // Reduz carrinho a um elemento comparando o preço de um elemento com o próximo
          produto_mais_caro = carrinho.reduce(
            (maior, atual) =>
                (maior["preco"] >= atual["preco"]) ? maior : atual,
          );

          print("");
          print("Informações da compra:");
          print("");
          print("Número de unidades de produtos: $total_unidades");
          print("Número de produtos diferentes: $total_itens");
          print("Valor total: $valor_total");
          print("");
          print("Curiosidades: ");
          print("");
          print(
            "O produto mais caro é ${produto_mais_caro["nome"]} custando ${produto_mais_caro["preco"]} por unidade",
          );
          print("A média dos preços dos produtos é: $media_precos_simples");
          print(
            "A média dos subtotais dos produtos é: $media_precos_ponderada",
          );
          print("");

          stdout.write("Pressione enter para continuar...");
          stdin.readLineSync();
          print("");
          continue;
        } else {
          print("");
          print("Nenhum produto no carrinho!");
          stdout.write("Pressione enter para continuar...");
          stdin.readLineSync();
          print("");
          continue;
        }
      }
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

// decoracao => fírulas decorativas
void decoracao() {
  print("");
  print("=" * 70);
  print("");
}

// entradaString
String entradaString({
  required String mensagemEntrada = "Entre com um valor: ",
  required String mensagemInvalida = "Por favor entre com algum valor!",
}) {
  while (true) {
    // Entrada em si:
    stdout.write(mensagemEntrada);
    String entrada = stdin.readLineSync() ?? "";
    print("");
    print("=" * 70);
    print("");

    // Validação de valores vazios:
    if (entrada.trim().isEmpty) {
      print(mensagemInvalida);
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
}

// entradaDoublePositivo
// entradaIntPositivo
// entradaId
// cadastrarProduto
// exibirCarrinho
// modificarProduto
// removerProduto
// resumoCarrinho

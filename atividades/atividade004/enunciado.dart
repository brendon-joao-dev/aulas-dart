// Enunciado:
// Projeto 2 – Simulador de Carrinho de Compras(Brendon - Bruno)
// O segundo projeto consiste na criação de um simulador de carrinho de compras,
// voltado à prática da manipulação de listas e mapas em conjunto.
// O sistema deve utilizar uma lista de mapas (List<Map<String, dynamic>>) para
// representar os produtos adicionados ao carrinho, sendo que cada produto deve
// conter as chaves ‘nome’, ‘preco’ e ‘quantidade’. O programa deve oferecer opções
// para adicionar novos produtos, atualizar a quantidade de um item existente,
// remover um produto pelo nome e exibir um resumo detalhado com o subtotal de cada item,
// o total geral e a quantidade total de produtos. Todas as operações de modificação ou 
// leitura devem ser realizadas acessando diretamente as chaves do mapa, como produto['preco'] 
// ou produto['quantidade']. O sistema deve validar entradas incorretas,
// impedindo valores nulos ou negativos, e empregar operadores de null safety (??, ?., !)
// para evitar erros de execução. Estruturas de repetição devem ser utilizadas para controlar o menu principal,
// e condicionais, para as decisões de fluxo. Como desafio adicional, o aluno pode implementar funções que
// calculem a média de preços dos produtos e identifiquem o item mais caro do carrinho, reforçando o domínio da estrutura Map.

// Requisitos funcionais:
// RF[001] Criação - Criar Maps dentro de uma lista com a estrutura List<Map<String, dynamic>>
// RF[002] Leitura - Exibir todos os itens do carinho
// RF[003] Alteração - Alterar a quantidade de um produto existente pelo seu nome
// RF[004] Excluir - Remover produtos do carrinho por seus nomes
// RF[005] Cálculo de subtotal - Calcular quanto aquele produto está custando, multiplicando seu preço por sua quantidade 
// RF[006] Cálculo de total - Somar todos os subtotais para ter o total do carrinho
// RF[007] Contar unidades - Exibir a quantidade total de produtos do carrinho (interessante exibir por produto também)
// RF[008] Cálculo de média - Calcular a média do preço dos produtos no carrinho (talvez também a média dos subtotais)
// RF[009] Identificar o mais caro - Identificar o item mais caro do carrinho (talvez ordenar o carrinho) 

// Requisitos não funcionais:
// RNF[001] Manter sistema - O sistema deve continuar executando até que o usuário opte por sair
// RNF[001] Validar e repetir entradas - Validar todas as entradas, pedindo novos valores caso o usuário insira um inválido
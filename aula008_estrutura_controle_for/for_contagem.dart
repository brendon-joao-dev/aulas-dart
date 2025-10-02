import "dart:io";
void main() {
  for (int i = 1; i <= 5; i++) {
    print(i); // Quebra de linha
  }

  for (int i = 1; i <= 5; i++) {
    stdout.write("$i "); // Sem quebra de linha
  }

  // Neste exemplo, a variável ié inicializada
  // com o valor 1 antes do início do loop.
  // A condição de controle i <= 5 verifica se a
  // variável i é menor ou igual a 5. Enquanto
  // essa condição foi verdadeira, o bloco de
  // código dentro do loop será executado.
  // O incremento i++ é executado após cada iteração,
  // adicionando 1 à variável i. O resultado desse
  // Código será a impressão dos números de
  // 1 a 5 na saída padrão.
}

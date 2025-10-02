import "dart:io";
void main() {
  // ------------------------------
  // Variável de controle do laço
  int i = 1;

  // ------------------------------
  // Estrutura de repetição while
  // Enquanto a condição (i <= 5) for verdadeira,
  // o bloco de código será executado.
  while (i <= 5) {
    // stdout.write imprime na mesma linha (sem quebra de linha automática)
    stdout.write("$i ");

    // ------------------------------
    // IMPORTANTE:
    // Se não incrementarmos a variável "i",
    // a condição nunca mudará e o loop se tornará INFINITO.
    // ------------------------------
    i++;
  }
}

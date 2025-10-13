import "dart:io";

double soma = 0.0;

void main () {
  print("~"*30);
  print("Calculadora de média de notas");
  print("~"*30);

  while (true) {
    // Looping para 4 entradas
    for (int i = 1; i <= 4; i++) {
      stdout.write("Digite a $iª nota: ");
      String entrada = stdin.readLineSync()!;
      print("~"*30);

      // Valida cada entrada sendo ela um número
      if (double.tryParse(entrada) != null && entrada.isNotEmpty) {
        double nota = double.tryParse(entrada)!;
        soma += nota;
      // Se não for um número
      } else {
        print("Por favor digite um nota numérica!");
        print("~"*30);

        // Mantém o looping na mesma volta
        i--;
        continue;
      }
    }

    // Cálcula a média
    double media = soma / 4;

    print("A média das notas inseridas é: $media");
    print("~"*30);

    stdout.write("Pressione enter para calcular outra média ou 0 para sair: ");
    String continuar = stdin.readLineSync()!;
    print("~"*30);

    if (continuar == "0") {
      break;
    } else {
      continue;
    }
  }
}
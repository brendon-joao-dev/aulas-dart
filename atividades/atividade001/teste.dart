import "dart:io";

var teste;

void main() {
  while (true) {
    stdout.write("Escreva: ");
    teste = stdin.readLineSync()!;
    print("");

    if (int.tryParse(teste) != null) {
      teste = int.tryParse(teste);
      print("Valor: ${teste}\nTipo ${teste.runtimeType}");
      print("Tipo escolhido!");
      print("");
      break;
    } else {
      print("Valor: ${teste}\nTipo ${teste.runtimeType}");
      print("Outro tipo!");
      print("");
      continue;
    }
  }
}

// tryParse funciona para validações de tipo :0
// Exemplo de uso validando tipo int
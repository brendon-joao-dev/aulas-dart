import "dart:io";

String teste = "";

void main() {

  stdout.write("Escreva: ");
  teste = stdin.readLineSync()!;

  try {
    int.parse(teste);
    print("Valor válido");
  } catch (e) {
    print("Valor inválido");
  }
}
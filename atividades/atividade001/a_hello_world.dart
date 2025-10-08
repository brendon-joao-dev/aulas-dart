import "dart:io";

void main() {
  print("~"*30);
  print("Hello World!");
  print("~"*30);

  stdout.write("Pressione enter para escrever outra mensagem ");
  stdin.readLineSync();

  while (true) {
    stdout.write("Digite a nova mensagem: ");
    var mensagem = stdin.readLineSync();

    if (mensagem != null && mensagem.isNotEmpty) {
      print(mensagem);
      stdout.write("Pressione enter para escrever outra mensagem ou 0 para sair: ");
      var continuar = stdin.readLineSync();

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    }
  }
}
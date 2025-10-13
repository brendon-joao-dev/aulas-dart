// Importação de bibliotecas
import "dart:io";

void main() {
  print("~"*30);
  print("Hello World!");
  print("~"*30);

  stdout.write("Pressione enter para escrever outra mensagem ");
  stdin.readLineSync();
  print("~"*30);

  while (true) {
    stdout.write("Digite a nova mensagem: ");
    var mensagem = stdin.readLineSync();

    if (mensagem != null && mensagem.isNotEmpty) {
      print("~"*30);
      print(mensagem);
      print("~"*30);
      stdout.write("Pressione enter para escrever outra mensagem ou 0 para sair: ");
      var continuar = stdin.readLineSync();
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("~"*30);
      print("Por favor digite uma mensagem!");
      print("~"*30);
    }
  }
}
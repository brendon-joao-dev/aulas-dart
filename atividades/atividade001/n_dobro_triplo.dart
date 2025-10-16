import "dart:io";

void main () {
  print("~"*30);
  print("Dobro ou triplo");
  print("~"*30);
  print("Se o número for positivo, ele será dobrado");
  print("Se o número for negativo, ele será triplicado");
  print("~"*30);

  while (true) {
    stdout.write("Digite um número: ");
    double? numero = double.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (numero != null) {
      if (numero == 0) {
        print("O valor inserido é zero (0), que não pode ser dobrado nem triplicado");
        print("~"*30);
      } else if (!numero.isNegative) {
        print("O dobro de $numero é ${numero * 2}");
        print("~"*30);
      } else if (numero.isNegative) {
        print("O triplo de $numero é ${numero * 3}");
        print("~"*30);
      } else {
        print("Como chegamos aqui?");
        print("~"*30);
      }

      stdout.write("Pressione enter para testar outro número ou 0 para sair: ");
      String continuar = stdin.readLineSync()!;
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("Por favor digite um valor numérico!");
      print("~"*30);
      continue;
    }
  }
}
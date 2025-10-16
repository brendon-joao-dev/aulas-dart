import "dart:io";

void main () {
  print("~"*30);
  print("Conversor de Moedas");
  print("Real => Dólar | Euro | Won");
  print("~"*30);

  while (true) {
    stdout.write("Digite um valor em reais: ");
    double? real = double.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (real != null && !real.isNegative) {
      double dolar = real * 0.18;
      double euro = real * 0.16;
      double won = real * 260.76;

      print("Valor em Reais(BRL): ${real.toStringAsFixed(2)}");
      print("Valor em Dólares(USD): ${dolar.toStringAsFixed(2)}");
      print("Valor em Euros(EUR): ${euro.toStringAsFixed(2)}");
      print("Valor em Wons(KRW): ${won.toStringAsFixed(2)}");
      print("~"*30);

      stdout.write("Pressione enter para fazer outra conversão ou 0 para sair: ");
      String continuar = stdin.readLineSync()!;
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("Por favor digite um valor positivo!");
      print("~"*30);
      continue;
    }
  }
}
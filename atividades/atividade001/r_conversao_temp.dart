import "dart:io";

double? temp;
double? resultado;

void main () {
  print("~"*30);
  print("Conversor de Temperaturas");
  print("~"*30);

  while (true) {
    print("1 - Celsius => Fahrenheit");
    print("2 - Fahrenheit => Celsius");
    print("~"*30);

    stdout.write("Escolha a conversão (1 ou 2): ");
    int? escolha = int.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (escolha != null && escolha == 1 || escolha == 2) {
      while (true) {
        stdout.write("Digite a temperatura: ");
        temp = double.tryParse(stdin.readLineSync()!);
        print("~"*30);

        if (temp != null) {
          break;
        } else {
          print("Por favor digite uma temperatura numérica!");
          print("~"*30);
          continue;
        }
      }

      if (escolha == 1) {
        resultado = ((temp! * 9) / 5) + 32;

        print("A temperatura ${temp!.toStringAsFixed(2)}°C em Fahrenheit é ${resultado!.toStringAsFixed(2)}");
        print("~"*30);
      } else if (escolha == 2) {
        resultado = ((temp! - 32) * 5) / 9;

        print("A temperatura ${temp!.toStringAsFixed(2)}°F em Celsius é ${resultado!.toStringAsFixed(2)}");
        print("~"*30);
      } else {
        print("Uai! Como tu chegou aqui?");
        print("~"*30);
        continue;
      }

      stdout.write("Pressione enter para converter outra temperatura ou 0 para sair: ");
      String continuar = stdin.readLineSync()!;
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("Por favor escolha uma das duas opções!");
      print("~"*30);
      continue;
    }
  }
}
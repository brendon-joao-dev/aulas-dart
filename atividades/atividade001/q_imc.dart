import "dart:io";
import "dart:math";

double? altura;
double? peso;
double? imc;

void main () {
  print("~"*30);
  print("Calculadora de IMC (Índice de Massa Corporal)");
  print("~"*30);

  while (true) {
    stdout.write("Digite a altura de uma pessoa (em metros): ");
    altura = double.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (altura != null && !altura!.isNegative && altura != 0) {
      while (true) {
        stdout.write("Digite o peso de uma pessoa (em quilogramas): ");
        peso = double.tryParse(stdin.readLineSync()!);
        print("~"*30);

        if (peso != null && !peso!.isNegative && peso != 0) {
          break;
        } else {
          print("Por favor digite um peso numérico positivo!");
          print("~"*30);
          continue;
        }
      }

      imc = peso! / pow(altura!, 2);

      print("O IMC de uma pessoa com altura ${altura!.toStringAsFixed(2)} e peso ${peso!.toStringAsFixed(2)} é ${imc!.toStringAsFixed(2)}");
      print("~"*30);

      stdout.write("Pressione enter para outro IMC ou 0 para sair: ");
      String continuar = stdin.readLineSync()!;
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("Por favor digite uma altura numérica positiva!");
      print("~"*30);
      continue;
    }
  }
}
import "dart:io";
import "dart:math";

double? montante;
int? tempo;
double? juros;
double? capital;
String? regime;

void main () {
  print("~"*30);
  print("Calculadora de Juros");
  print("~"*30);

  while (true) {
    print("1 - Juros Simples");
    print("2 - Juros Compostos");
    print("~"*30);

    stdout.write("Escolha o tipo de juros que quer calcular: ");
    int? escolha = int.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (escolha != null && escolha == 1 || escolha == 2) {
      while (true) {
        stdout.write("Digite o valor do capital inicial: ");
        capital = double.tryParse(stdin.readLineSync()!);
        print("~"*30);

        if (capital != null && !capital!.isNegative) {
          break;
        } else {
          print("Por favor digite um valor númerico positivo como capital!");
          print("~"*30);
          continue;
        }
      }

      while (true) {
        stdout.write("Digite a taxa de juros mensais (em %): ");
        juros = double.tryParse(stdin.readLineSync()!);
        print("~"*30);

        if (juros != null && !juros!.isNegative) {
          break;
        } else {
          print("Por favor digite um valor numérico decimal positivo como taxa de juros!");
          print("~"*30);
          continue;
        }
      }

      while (true) {
        stdout.write("Digite o tempo em meses: ");
        tempo = int.tryParse(stdin.readLineSync()!);
        print("~"*30);

        if (tempo != null && !tempo!.isNegative) {
          break;
        } else {
          print("Por favor digite um valor numérico positivo como tempo!");
          print("~"*30);
          continue;
        }
      }

      if (escolha == 1) {
        regime = "Juros Simples";
        montante = capital! + (capital! * (juros!/100) * tempo!);
      } else if (escolha == 2) {
        regime = "Juros Compostos";
        montante = capital! * pow((1 + (juros!/100)), tempo!);
      }
    } else {
      print("Por favor escolha entre uma das duas opções!");
      print("~"*30);
      continue;
    }

    print("O valor R\$${capital!.toStringAsFixed(2)},\na uma taxa de ${juros!.toStringAsFixed(2)}% ao mês,\npor $tempo meses em um regime de $regime");
    print("resulta em um montante de R\$${montante!.toStringAsFixed(2)}");
    print("~"*30);

    stdout.write("Pressione enter para calcular outros juros ou 0 para sair: ");
    String continuar = stdin.readLineSync()!;
    print("~"*30);

    if (continuar == "0") {
      break;
    } else {
      continue;
    }
  }
}
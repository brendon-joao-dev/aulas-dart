import "dart:io";

double? dividendo;
double? divisor;

void main () {
  print("~"*30);
  print("Calculadora de Divisão");
  print("~"*30);

  while (true) {
    stdout.write("Digite o valor do dividendo: ");
    String a = stdin.readLineSync()!;
    print("~"*30);
    
    if (a.isNotEmpty) {
      a = a.replaceAll(" ", "");
      if (double.tryParse(a) != null) {
        dividendo = double.tryParse(a)!;
      } else {
        print("Por favor digite um valor numérico!");
        print("~"*30);
        continue;
      }
    } else {
      print("Por favor digite algo!");
      print("~"*30);
      continue;
    }

    while (true) {
      stdout.write("Digite o valor do divisor: ");
      String b = stdin.readLineSync()!;
      print("~"*30);

      if (b.isNotEmpty) {
        b = b.replaceAll(" ", "");
        if (double.tryParse(b) != null) {
          divisor = double.tryParse(b)!;
          if (divisor != 0) {
            break;
          } else {
            print("Por favor digite um divisor diferente de zero!");
            print("~"*30);
            continue;
          }
        } else {
          print("Por favor digite um valor numérico!");
          print("~"*30);
          continue;
        }
      } else {
        print("Por favor digite algo!");
        print("~"*30);
        continue;
      }
    }

    double divisao = dividendo! / divisor!;

    print("A divisão de $dividendo por $divisor = ${divisao.toStringAsFixed(4)}");
    print("~"*30);
    
    stdout.write("Pressione enter para outra divisão ou 0 para sair: ");
    String continuar = stdin.readLineSync()!;
    print("~"*30);

    if (continuar != "0") {
      continue;
    } else {
      break;
    }
  }
}
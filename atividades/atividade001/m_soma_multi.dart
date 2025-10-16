import "dart:io";

int? a;
int? b;
int? c;

void main () {
  print("~"*30);
  print("Somar ou multiplica?");
  print("~"*30);
  print("Digite dois valores inteiros, ");
  print("Se eles forem iguais o programa vai somá-los");
  print("Se forem diferentes o programa vai multiplicá-los");
  print("~"*30);

  while (true) {
    stdout.write("Digite o primeiro número: ");
    a = int.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (a != null) {
      while (true) {
        stdout.write("Digite o segundo número: ");
        b = int.tryParse(stdin.readLineSync()!);
        print("~"*30);

        if (b != null) {
          break;
        } else {
          continue;
        }
      }

      if (a == b) {
        c = a! + b!;
        print("A soma de $a + $b é igual a $c");
        print("~"*30);
      } else {
        c = a! * b!;
        print("A multiplicação de $a X $b é igual a $c");
        print("~"*30);
      }

      stdout.write("Pressione enter para digitar outros valores ou 0 para sair: ");
      String continuar = stdin.readLineSync()!;
      print("~"*30);

      if (continuar == "0") {
        break;
      } else {
        continue;
      }
    } else {
      print("Por favor digite um número inteiro!");
      print("~"*30);
      continue;
    }
  }
}
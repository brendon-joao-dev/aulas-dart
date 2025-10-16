import "dart:io";
import "dart:math";

int? opcao;
String? continuar;
double? area;
double? lado;
double? altura;
double? base;
double? baseMenor;
double? baseMaior;
double? raio;

void main () {
  print("~"*30);
  print("Calculadora de Área de Formas Geométricas Básicas");
  print("Quadrado | Retângulo | Triângulo | Trapézio | Círculo");
  print("~"*30);
  
  while (true) {
    print("Formas disponíveis: ");
    print("1 - Quadrado");
    print("2 - Retângulo");
    print("3 - Triângulo");
    print("4 - Trapézio");
    print("5 - Círculo");
    print("~"*30);

    stdout.write("Digite o número da forma que deseja calcular a área: ");
    opcao = int.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (opcao != null && !opcao!.isNegative) {
      
      if (opcao == 1) {
        print(" <~~ QUADRADO ~~> ");
        print("~"*30);

        while (true) {
          stdout.write("Digite a medida do lado do quadrado: ");
          lado = double.tryParse(stdin.readLineSync()!);
          print("~"*30);

          if (lado != null && !lado!.isNegative) {
            area = pow(lado!, 2).toDouble();
            break;
          } else {
            print("Por favor digite um lado númerico não negativo!");
            print("~"*30);
            continue;
          }
        }

        print("A área do quadrado de lados ${lado!.toStringAsFixed(2)}");
        print("É igual a: ${area!.toStringAsFixed(2)}");
        print("~"*30);

        stdout.write("Pressione enter para calcular a área de outra figura ou 0 para sair: ");
        continuar = stdin.readLineSync()!;
        print("~"*30);

        if (continuar == "0") {
          break;
        } else {
          continue;
        }

      } else if (opcao == 2) {
        print(" <~~ Retângulo ~~>");
        print("~"*30);

        while (true) {
          stdout.write("Digite a medida da altura do retângulo: ");
          altura = double.tryParse(stdin.readLineSync()!);
          print("~"*30);

          if (altura != null && !altura!.isNegative) {
            while (true) {
              stdout.write("Digite a medida da base do retângulo: ");
              base = double.tryParse(stdin.readLineSync()!);
              print("~"*30);

              if (base != null && !base!.isNegative) {
                break;
              } else {
                print("Por favor digite uma base númerica não negativa!");
                print("~"*30);
                continue;
              }
            }

            area = base! * altura!;
            break;
          } else {
            print("Por favor digite uma altura númerica não negativa!");
            print("~"*30);
            continue;
          }
        }

        print("A área do retângulo de altura ${altura!.toStringAsFixed(2)}\ne base ${base!.toStringAsFixed(2)}");
        print("É igual a: ${area!.toStringAsFixed(2)}");
        print("~"*30);

        stdout.write("Pressione enter para calcular a área de outra figura ou 0 para sair: ");
        continuar = stdin.readLineSync()!;
        print("~"*30);

        if (continuar == "0") {
          break;
        } else {
          continue;
        }

      } else if (opcao == 3) {
        print(" <~~ Triângulo ~~>");
        print("~"*30);

        while (true) {
          stdout.write("Digite a medida da altura do triângulo: ");
          altura = double.tryParse(stdin.readLineSync()!);
          print("~"*30);

          if (altura != null && !altura!.isNegative) {
            while (true) {
              stdout.write("Digite a medida da base do triângulo: ");
              base = double.tryParse(stdin.readLineSync()!);
              print("~"*30);

              if (base != null && !base!.isNegative) {
                break;
              } else {
                print("Por favor digite uma base númerica não negativa!");
                print("~"*30);
                continue;
              }
            }

            area = (base! * altura!) / 2;
            break;
          } else {
            print("Por favor digite uma altura númerica não negativa!");
            print("~"*30);
            continue;
          }
        }

        print("A área do triângulo de altura ${altura!.toStringAsFixed(2)}\ne base ${base!.toStringAsFixed(2)}");
        print("É igual a: ${area!.toStringAsFixed(2)}");
        print("~"*30);

        stdout.write("Pressione enter para calcular a área de outra figura ou 0 para sair: ");
        continuar = stdin.readLineSync()!;
        print("~"*30);

        if (continuar == "0") {
          break;
        } else {
          continue;
        }

      } else if (opcao == 4) {
        print(" <~~ Trapézio ~~>");
        print("~"*30);

        while (true) {
          stdout.write("Digite a medida da altura do trapézio: ");
          altura = double.tryParse(stdin.readLineSync()!);
          print("~"*30);

          if (altura != null && !altura!.isNegative) {
            while (true) {
              stdout.write("Digite a medida da base maior do trapézio: ");
              baseMaior = double.tryParse(stdin.readLineSync()!);
              print("~"*30);

              if (baseMaior != null && !baseMaior!.isNegative) {
                while (true) {
                  stdout.write("Digite a medida da base menor do trapézio: ");
                  baseMenor = double.tryParse(stdin.readLineSync()!);
                  print("~"*30);

                  if(baseMenor != null && !baseMaior!.isNegative) {
                    break;
                  } else {
                    print("Por favor digite uma base menor númerica não negativa!");
                    print("~"*30);
                    continue;
                  }
                }
                break;
              } else {
                print("Por favor digite uma base maior númerica não negativa!");
                print("~"*30);
                continue;
              }
            }

            area = ((baseMaior! + baseMenor!) / 2) * altura!;
            break;
          } else {
            print("Por favor digite uma altura númerica não negativa!");
            print("~"*30);
            continue;
          }
        }

        print("A área do trapézio de altura ${altura!.toStringAsFixed(2)},\nbase maior ${baseMaior!.toStringAsFixed(2)} e base menor ${baseMenor!.toStringAsFixed(2)}");
        print("É igual a: ${area!.toStringAsFixed(2)}");
        print("~"*30);

        stdout.write("Pressione enter para calcular a área de outra figura ou 0 para sair: ");
        continuar = stdin.readLineSync()!;
        print("~"*30);

        if (continuar == "0") {
          break;
        } else {
          continue;
        }

      } else if (opcao == 5) {
        print(" <~~ Círculo ~~> ");
        print("~"*30);

        while (true) {
          stdout.write("Digite a medida do raio do círculo: ");
          raio = double.tryParse(stdin.readLineSync()!);
          print("~"*30);

          if (raio != null && !raio!.isNegative) {
            area =  pi * pow(raio!, 2).toDouble();
            break;
          } else {
            print("Por favor digite um raio númerico não negativo!");
            print("~"*30);
            continue;
          }
        }

        print("A área do círculo de raio ${raio!.toStringAsFixed(2)}");
        print("É igual a: ${area!.toStringAsFixed(2)}");
        print("~"*30);

        stdout.write("Pressione enter para calcular a área de outra figura ou 0 para sair: ");
        continuar = stdin.readLineSync()!;
        print("~"*30);

        if (continuar == "0") {
          break;
        } else {
          continue;
        }

      } else {
        print("Por favor digite uma opção entre 1 e 5!");
        print("~"*30);
        continue;
      }
    } else {
      print("Por favor digite uma opção positiva de 1 a 5!");
      print("~"*30);
      continue;
    }
  }
}
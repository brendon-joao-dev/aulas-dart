// Importação de módulos:
import "dart:io";
import "dart:math";

// Classe System:
// - Atributos: bool rodando
// - Métodos: rodarPrograma(), continuarPrograma(), entrarDados()
class System {
  // Atributos:
  bool rodando; // Define se o programa deve rodar ou não chamar rodarPrograma()
  Function algoritmo; // Função que deve ser executada a cada ciclo do programa

  // Construtor:
  System({required this.algoritmo, this.rodando = false});

  // Método que executa a função algoritmo() de acordo com a flag rodando
  void rodarPrograma() {
    this.rodando = true;
    while (rodando) {
      algoritmo();
    }
    this.rodando = false;
  }

  // Método que pergunta ao usuário se quer continuar o programa, retornando true ou false
  bool continuarPrograma({String mensagem = ""}) {
    String continuar = "";
    while (true) {
      stdout.write(mensagem);
      continuar = stdin.readLineSync()!.toLowerCase().trim();
      print("");

      if (continuar == "s") {
        return true;
      } else if (continuar == "n") {
        return false;
      } else {
        print("Por favor digite 's' para sim ou 'n' para não!\n");
        continue;
      }
    }
  }

  // Método com Generics para permitir entrada e validação de diferentes tipos de dados, retornando o valor inserido pelo usuário
  T entrarDados<T>({
    String mensagemEntrada = "Entre com um valor: ",
    String mensagemInvalida = "Por favor entre com algum valor!",
    bool positivo = false,
  }) {
    while (true) {
      stdout.write(mensagemEntrada);
      String entrada = stdin.readLineSync() ?? "";
      print("");

      if (T == String) {
        if (!entrada.trim().isEmpty) {
          return entrada as T;
        } else {
          print(mensagemInvalida);
          print("");
          continue;
        }
      }

      if (T == double) {
        if (positivo) {
          if (double.tryParse(entrada) != null &&
              !double.parse(entrada).isNegative) {
            return double.parse(entrada) as T;
          } else {
            print(mensagemInvalida);
            print("");
            continue;
          }
        } else {
          if (double.tryParse(entrada) != null) {
            return double.parse(entrada) as T;
          } else {
            print(mensagemInvalida);
            print("");
            continue;
          }
        }
      }

      if (T == int) {
        if (positivo) {
          if (int.tryParse(entrada) != null && !int.parse(entrada).isNegative) {
            return int.parse(entrada) as T;
          } else {
            print(mensagemInvalida);
            print("");
            continue;
          }
        } else {
          if (int.tryParse(entrada) != null) {
            return int.tryParse(entrada) as T;
          } else {
            print(mensagemInvalida);
            print("");
            continue;
          }
        }
      }
    }
  }
}

// Classe Calculadora:
// - Métodos: soma(), subtracao(), multiplicacao(), divisao(), restoDivisao(), divisaoInteira(), media(), antecessorSucessor(), dobrarTriplicar(), tabuada(), verificarPar(), verificarImpar()
class Calculadora {
  double soma({double n1 = 0, double n2 = 0}) {
    double soma = n1 + n2;
    return soma;
  }

  double subtracao({double n1 = 0, double n2 = 0}) {
    double subtracao = n1 - n2;
    return subtracao;
  }

  double multiplicacao({double n1 = 0, double n2 = 0}) {
    double multiplicacao = n1 * n2;
    return multiplicacao;
  }

  double divisao({double n1 = 0, double n2 = 0}) {
    if (n2 == 0) {
      n2 = 1;
    }

    double divisao = n1 / n2;
    return divisao;
  }

  double restoDivisao({double n1 = 0, double n2 = 0}) {
    if (n2 == 0) {
      n2 = 1;
    }

    double restoDivisao = n1 % n2;
    return restoDivisao;
  }

  double divisaoInteira({double n1 = 0, double n2 = 0}) {
    if (n2 == 0) {
      n2 = 1;
    }

    double divisaoInteira = (n1 ~/ n2).toDouble();
    return divisaoInteira;
  }

  double media({required List<double> valores}) {
    double soma = valores.reduce((soma, n) => soma += n);
    double media = soma / 4;
    return media;
  }

  List<int> antecessorSucessor({int numero = 0}) {
    int antecessor = numero - 1;
    int sucessor = numero + 1;
    return [antecessor, sucessor];
  }

  List<double> dobrarTriplicar({double numero = 0}) {
    double dobro = numero * 2;
    double triplo = numero * 3;
    return [dobro, triplo];
  }

  void tabuada({int numero = 0}) {
    for (int i = 1; i <= 10; i++) {
      print("$numero X $i = ${numero * i}");
    }
  }

  bool verificarPar({int numero = 0}) {
    if (numero % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }

  bool verificarImpar({int numero = 0}) {
    if (numero % 2 != 0) {
      return true;
    } else {
      return false;
    }
  }
}

// Classe Geometria:
// - Atributos: double lado, double base, double altura, double raio
// - Métodos: areaQuadrado(), areaRetangulo(), areaTriangulo(), areaCirculo()
class Geometria {
  double lado;
  double base;
  double altura;
  double raio;

  Geometria({this.lado = 0, this.base = 0, this.altura = 0, this.raio = 0});

  double areaQuadrado() {
    double area = pow(lado, 2).toDouble();
    return area;
  }

  double areaRetangulo() {
    double area = base * altura;
    return area;
  }

  double areaTriangulo() {
    double area = (base * altura) / 2;
    return area;
  }

  double areaCirculo() {
    double area = pi * pow(raio, 2).toDouble();
    return area;
  }
}

// Classe Datas:
// - Atributos: int ano
// - Métodos: calcularIdade()
class Datas {
  late int ano;
  late int anoAtual;

  Datas({int ano = 0, int anoAtual = 0}) {
    this.ano = 0;
    this.anoAtual = DateTime.now().year.toInt();
  }

  int calcularIdade() {
    int idade = anoAtual - ano;
    return idade;
  }
}

// Classe Moedas:
// - Atributos: double valorReais
// - Métodos: converterEuros(), converterWons(), converterDolares()

// Classe Juros:
// - Atributos: double montante, double investimento, double tempo, double taxa
// - Métodos: calcularJurosSimples(), calcularJurosCompostos()

// Classe Fisica:
// - Atributos: double temperatura
// - Métodos: converterCelcius(), converterFahnheit()

// Classe Saude:
// - Atributos: double altura, double peso
// - Nétodos: calcularIMC()

// Classe Filtros:
// - Atributos: int a, int b, int c
// - Métodos: saoIguais(), verificarPositivo(), verificarNegativo(), verificarParImpar(), ordenarDecrescente()

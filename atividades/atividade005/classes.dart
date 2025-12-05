// Importação de módulos:
import "dart:io";

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
// - Atributos: int n1, int n2
// - Métodos: soma(), subtracao(), multiplicacao(), divisao(), restoDivisao(), divisaoInteira(), media(), antecessorSucessor(), dobrarTriplicar(), tabuada(), verificarParImpar()

// Classe Geometria:
// - Atributos: double medida, double lado, double base, double altura, double raio
// - Métodos: areaQuadrado(), areaRetangulo(), areaTriangulo(), areaCirculo()

// Classe Datas:
// - Atributos: int ano
// - Métodos: calcularIdade()

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

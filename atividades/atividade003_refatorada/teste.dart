import "dart:io";

List<T> entradaIntervalo<T>({int quantidade_itens = 0, String elementoDesejado = "números inteiros"}) {
  List<String> entradas;
  List<T?> intervaloValidando;
  bool todosValidos = true;

  while (true) {
    stdout.write("Digite uma sequência de ${elementoDesejado} separados por espaço: ");
    String? entrada = stdin.readLineSync();
    print("");

    if (entrada != null) {
      entradas = entrada.trim().split(" ");
    } else {
      print("Por favor digite algo!");
      print("");
      continue;
    }

    intervaloValidando = entradas.map((item) {
      if (T == int) {
        return int.tryParse(item); 
      }
      if (T == double) {
        int.tryParse(item) ?? null;
      }
      if (T == String) {
        return;
      }
    }).toList();

    print(entradas);
    print(intervaloValidando);

    if (quantidade_itens != 0) {
      if (quantidade_itens != intervaloValidando.length) {
        print("Por favor digite ${quantidade_itens} ${elementoDesejado}!");
        print("");
        continue;
      }
    }

    for (int i = 0; i < intervaloValidando.length; i++) {
      if (intervaloValidando[i] == null) {
        print("O ${i+1}° número digitado é inválido!");
        print("");
        todosValidos = false;
        break;
      } else {
        continue;
      }
    }

    if (todosValidos) {
      List<T> intervalo = intervaloValidando.cast<T>();
      return intervalo;
    }
  }
}

void main() {
  List<int> intervaloInt;
  List<double> intervaloDouble;
  List<String> intervaloString;

  intervaloInt = entradaIntervalo<int>();

  intervaloDouble = entradaIntervalo<double>(elementoDesejado: "números decimais");

  intervaloString = entradaIntervalo<String>(quantidade_itens: 5, elementoDesejado: "vogais");

  print("Intervalo de ints: $intervaloInt\n\n");

  print("Intervalo de doubles: $intervaloDouble\n\n");

  print("Intervalo de strings: $intervaloString\n\n");
}
import "dart:io";

List<T> entradaIntervaloNumeros<T>({int quantidade_itens = 0, elementoDesejado = "números inteiros"}) {
  List<String> entradas;
  List<T?> intervaloValidando;
  bool todosValidos = true;

  while (true) {
    stdout.write("Digite uma sequência de ${elementoDesejado} separados por espaço: ");
    String? entrada = stdin.readLineSync();
    print("");

    if (entrada != null) {
      entradas = entrada.split(" ");
    } else {
      print("Por favor digite algo!");
      print("");
      continue;
    }

    intervaloValidando = entradas.map((item) {
      if (T == int) int.tryParse(item) ?? null;
      if (T == double) int.tryParse(item) ?? null;
      if (T == String) return;
    }).toList();

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

List eliminarDuplicatas({required List listaComDuplicatas}) {
  
}

double calcularMedia({required List<double> notas}) {

}

List filtraModifica({required bool filtro, required Function modificacao}) {

}

int maxList({required List<int> listaNumeros}) {

}

String filtraPalavras({required letraIncial, required numeroCaracteres}) {

}
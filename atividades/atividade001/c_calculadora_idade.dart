import "dart:io";

bool valido = true;

void main () {
  print("~"*30);
  print("Calculadora de Idade");
  print("~"*30);

  while (true) {
    // Entrada
    stdout.write("Digite a sua data de nascimento (AAAA-MM-DD): ");
    String? entrada = stdin.readLineSync();
    entrada = entrada!.replaceAll(" ", ""); // Remove espaços da entrada
    print("~"*30);

    // Verifica se não é vazio
    if (entrada.isNotEmpty) {

      // Verifica se tem exatamente 10 caracteres
      if (entrada.length == 10) {

        // Validação de modelo
        // Varre os caracteres da entrada
        for (int i = 0; i < entrada.length; i++) {
          // Se for o quinto ou oitavo caracter verifica se é um hífen
          if (i == 4 || i == 7) {
            if (entrada[i] == "-") {
              continue;
            } else {
              valido = false;
              break;
            }
          // Se for outro caracter verifica se é um número
          } else {

            if (int.tryParse(entrada[i]) != null) {
              continue;
            } else {
              valido = false;
              break;
            }
          }
        }

        // Verifica se passou na validação de modelo
        if (valido) {
          DateTime dataAtual = DateTime.now(); // Pega data atual
          DateTime dataNascimento = DateTime.parse(entrada); // Converte entrada em data 

          // Verifica se a data inserida é anterior a atual
          if (dataNascimento.isBefore(dataAtual)) {

            // Cálculos da idade
            Duration diferenca = dataAtual.difference(dataNascimento); // Diferença entre dois objetos dateTime = objeto Duration
            int anos = diferenca.inDays ~/ 365; // Duration.inDays converte objeto Duration para dias

            // Saída
            print("Você tem $anos anos de vida");
            print("~"*30);
            
            // Opção de continuar o programa
            stdout.write("Pressione enter para verificar outra idade ou 0 para sair: ");
            String? continuar = stdin.readLineSync();
            print("~"*30);

            if (continuar == "0") {
              break;
            } else {
              continue;
            }
          } else {
            // Data futura a data atual
            print("Por favor digite uma data anterior a atual!");
            print("~"*30);
            continue;
          }
        } else {
          // Modelo inválido
          print("Por favor digite uma data no modelo AAAA-MM-DD");
          print("~"*30);
          valido = true;
          continue;
        }
      } else {
        // Quantidade de caracteres inválida
        print("Por favor digite apenas 10 caracteres no modelo AAAA-MM-DD!");
        print("~"*30);
        continue;
      }
    } else {
      // Entrada vazia
      print("Por favor digite algo!");
      print("~"*30);
      continue;
    }
  }
}
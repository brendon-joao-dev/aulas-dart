import "dart:math";

void main () {
  // Exemplo de valores base
  double x = 25;
  double y = 3;

  print("-"*70);
  // Raiz quadrada
  double raiz = sqrt(x);
  print("A raiz quadrada de $x é = $raiz");

  // Potência
  // pow retorna num, convertemso para double
  double potencia = pow(x, y).toDouble();
  print("$x elevado a $y = $potencia");

  // Máximo e mínimo
  print("O maior entre $x e $y = ${max(x, y)}");
  print("O menor entre $x e $y = ${min(x, y)}");

  // Valor absoluto
  double negativo = -15.7;
  print("O valor absoluto de $negativo = ${negativo.abs()}");

  // Seno e Cosseno (usando radianos)
  // 45 graus em radianos
  double angulo = pi / 4;
  print("Seno de 45° = ${sin(angulo)}");
  print("Cosseno de 45° = ${cos(angulo)}");

  // Gerando número aleatório
  Random random = Random();
  // Número inteiro de 0 a 99
  int aleatorio = random.nextInt(100);
  print("número aleatório entre 0 e 99 = $aleatorio");
  print("-"*70);
}
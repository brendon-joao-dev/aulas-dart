void main() {
  print("-"*70);
  print("EXEMPLO DE USO DO WHERE() COM STRINGS");
  print("="*70);

  // Lista de nomes
  List<String> nomes = ["Alice", "Ana", "Beatriz", "Bruna", "Carla", "Caio"];
  print("Lista de nomes: $nomes");

  // Filtrar nomes que começam com a letra "A"
  List<String> nomesComA = nomes.where((nome) => nome.startsWith("A")).toList();
  print("Nomes que começam com 'A': $nomesComA"); // [Alice, Ana]

  // Filtrar nome com mais de 4 caracteres
  List<String> nomesLongos = nomes.where((nome) => nome.length > 4).toList();
  print("Nomes com mais de 4 caracteres: $nomesLongos");
  
  print("-"*70);
}
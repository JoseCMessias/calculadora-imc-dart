class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    if (peso <= 0 || altura <= 0) {
      throw Exception("Peso e altura devem ser maiores que zero.");
    }
    return peso / (altura * altura);
  }
}
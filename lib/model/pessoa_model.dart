class PessoaModel {
  final double peso;
  final double altura;

  PessoaModel({
    required this.peso,
    required this.altura,
  });

  double calcularImc() {
    if (peso < 1) {
      return -1;
    } else if (altura < 1) {
      return -1;
    }
    return peso / (altura * altura);
  }
}

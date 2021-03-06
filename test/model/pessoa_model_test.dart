import 'package:flutter_test/flutter_test.dart';
import 'package:imc/model/pessoa_model.dart';

void main() {
  test('deve calcular o imc', () {
    var pessoa = PessoaModel(peso: 85, altura: 1.72);
    var resultado = pessoa.calcularImc();
    expect(resultado, 28.73174689021093);
  });
  test('deve retornar -1, caso peso menor que 1', () {
    var pessoa = PessoaModel(peso: 0, altura: 1.72);
    var resultado = pessoa.calcularImc();
    expect(resultado, -1);
  });
  test('deve retornar -1, caso altura for menor que 1', () {
    var pessoa = PessoaModel(peso: 85, altura: 0);
    var resultado = pessoa.calcularImc();
    expect(resultado, -1);
  });
}

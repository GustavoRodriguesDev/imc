import 'package:flutter_test/flutter_test.dart';
import 'package:imc/controller/imc_controller.dart';

void main() {
  test('Testar se o valor atribuido é menor que 1', () {
    var imc = ImcController();
    imc.altura = 0;
    imc.peso = 85;
    imc.atribuirResultadoTexto();
    expect(imc.texto, 'Valores digitados estão incorretos');
  });
  test('Testar se o valor atribuido é menor que 18.5', () {
    var imc = ImcController();
    imc.altura = 1.72;
    imc.peso = 40;
    imc.atribuirResultadoTexto();
    expect(imc.texto, 'Seu imc é 13.52, Abaixo do peso normal');
  });
  test('Testar se o valor atribuido é menor que 24.9', () {
    var imc = ImcController();
    imc.altura = 1.72;
    imc.peso = 71;
    imc.atribuirResultadoTexto();
    expect(imc.texto, 'Seu imc é 24.00, peso normal');
  });

  test('Testar se o valor atribuido é menor que 28.9', () {
    var imc = ImcController();
    imc.altura = 1.72;
    imc.peso = 85;
    imc.atribuirResultadoTexto();
    expect(imc.texto, 'Seu imc é 28.73, excesso peso');
  });

  test('Testar se o valor atribuido é menor que 34.9', () {
    var imc = ImcController();
    imc.altura = 1.72;
    imc.peso = 95;
    imc.atribuirResultadoTexto();
    expect(imc.texto, 'Seu imc é 32.11, obesidade 1');
  });
  test('Testar se o valor atribuido é menor que 39.9', () {
    var imc = ImcController();
    imc.altura = 1.72;
    imc.peso = 115;
    imc.atribuirResultadoTexto();
    expect(imc.texto, 'Seu imc é 38.87, obesidade 2');
  });
  test('Testar se o valor atribuido é maior que 39.9', () {
    var imc = ImcController();
    imc.altura = 1.72;
    imc.peso = 140;
    imc.atribuirResultadoTexto();
    expect(imc.texto, 'Seu imc é 47.32, obesidade 3');
  });
}

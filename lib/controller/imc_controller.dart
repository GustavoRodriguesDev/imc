// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:imc/model/pessoa_model.dart';

class ImcController extends ChangeNotifier {
  double peso = 0;
  double altura = 0;
  String texto = '';

  void atribuirResultadoTexto() {
    var pessoa = PessoaModel(peso: peso, altura: altura);
    var imc = pessoa.calcularImc();
    texto = imc.toStringAsFixed(2);
    if (imc <= 1) {
      texto = 'Valores digitados estão incorretos';
    } else if (imc < 18.5) {
      texto = 'Seu imc é $texto, Abaixo do peso normal';
    } else if (imc < 24.9) {
      texto = 'Seu imc é $texto, peso normal';
    } else if (imc < 29.9) {
      texto = 'Seu imc é $texto, excesso peso';
    } else if (imc < 34.9) {
      texto = 'Seu imc é $texto, obesidade 1';
    } else if (imc < 39.9) {
      texto = 'Seu imc é $texto, obesidade 2';
    } else {
      texto = 'Seu imc é $texto, obesidade 3';
    }
    notifyListeners();
  }
}

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
      texto = 'Por favor, digite algo válido';
    } else if (imc < 18.5) {
      texto = 'Magreza';
    } else if (imc < 24.9) {
      texto = 'Normal';
    } else if (imc < 29.9) {
      texto = 'Sobrepeso';
    } else if (imc < 34.9) {
      texto = 'Sobrepeso 1';
    } else if (imc < 39.9) {
      texto = 'Sobrepeso 2';
    } else {
      texto = 'Sobrepeso 3 / Morbida';
    }
    notifyListeners();
  }
}

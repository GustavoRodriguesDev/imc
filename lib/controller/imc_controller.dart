import 'package:flutter/cupertino.dart';
import 'package:imc/model/pessoa_model.dart';

class ImcController extends ChangeNotifier {
  String _peso = '';
  String _altura = '';
  String texto = '';

  String get peso => _peso;
  String get altura => _altura;

  set peso(String value) {
    _peso = value.replaceAll(',', '.');
  }

  set altura(String value) {
    _altura = value.replaceAll(',', '.');
  }

  atribuirResultadoTexto() {
    var pessoa = PessoaModel(
      altura: double.tryParse(altura) ?? 0,
      peso: double.tryParse(peso) ?? 0,
    );
    var resultado = pessoa.calcularImc();
    texto = resultado.toStringAsFixed(2);
    notifyListeners();
  }
}

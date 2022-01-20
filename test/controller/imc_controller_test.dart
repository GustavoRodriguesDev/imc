// import 'package:flutter_test/flutter_test.dart';
// import 'package:imc/controller/imc_controller.dart';

// void main() {
//   test('Qualquer valor atribuido deve ser maior que 1', () {
//     var imc = ImcController();
//     imc.altura('0');
//     imc.peso('85');
//     imc.atribuirResultadoTexto();
//     expect(imc.texto, 'Por favor, digite algo válido');
//   });

//   test(
//       'Deve apresentar condição de magreza, (Resultado obtido deve ser menor que 18.5)',
//       () {
//     var imc = ImcController();
//     imc.alturaSet('1.72');
//     imc.pesoSet('40');
//     imc.atribuirResultadoTexto();
//     expect(imc.texto, 'Magreza');
//   });

//   test(
//       'Deve apresentar condição de normal, (Resultado obtido deve ser menor que 24.9) ',
//       () {
//     var imc = ImcController();
//     imc.alturaSet('1.72');
//     imc.pesoSet('71');
//     imc.atribuirResultadoTexto();
//     expect(imc.texto, 'Normal');
//   });
//   test(
//       'Deve apresentar condição de Sobrepeso,(Resultado obtido é menor que 28.9)',
//       () {
//     var imc = ImcController();
//     imc.alturaSet('1.72');
//     imc.pesoSet('85');
//     imc.atribuirResultadoTexto();
//     expect(imc.texto, 'Sobrepeso');
//   });

//   test(
//       'Deve apresentar condição de Sobrepeso 1, (Resultado obtido é menor que 34.9)',
//       () {
//     var imc = ImcController();
//     imc.alturaSet('1.72');
//     imc.pesoSet('95');
//     imc.atribuirResultadoTexto();
//     expect(imc.texto, 'Sobrepeso 1');
//   });
//   test(
//       'Deve apresentar condição de Sobrepeso 2, (Resultado obtido é menor que 39.9)',
//       () {
//     var imc = ImcController();
//     imc.alturaSet('1.72');
//     imc.pesoSet('115');
//     imc.atribuirResultadoTexto();
//     expect(imc.texto, 'Sobrepeso 2');
//   });
//   test(
//       'Deve apresentar condição de Sobrepeso 3/ Morbida, (Resultado obtido é maior que 39.9)',
//       () {
//     var imc = ImcController();
//     imc.alturaSet('1.72');
//     imc.pesoSet('140');
//     imc.atribuirResultadoTexto();
//     expect(imc.texto, 'Sobrepeso 3 / Morbida');
//   });
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/controller/imc_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = ImcController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            children: [
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                onChanged: (value) {
                  controller.altura = double.tryParse(value) ?? 0;
                },
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                onChanged: (value) {
                  controller.peso = double.tryParse(value) ?? 0;
                },
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  controller.atribuirResultadoTexto();
                },
                child: Text('Calcular Imc'),
              ),
              SizedBox(height: 15),
              AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    return Text(controller.texto);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/core/calculate_imc_usecase.dart';

class ImcController {
  final CalculateImcUsecase calculateImcUsecase;
  final TextEditingController controllerALT = TextEditingController();
  final TextEditingController controllerPES = TextEditingController();

  ImcController(this.calculateImcUsecase);

  double? calculeIMC() {
    try {
      double weightDoubleController = double.parse(controllerALT.text);
      double heightDoubleController = double.parse(controllerPES.text);
      if (weightDoubleController > 3.5) {
        weightDoubleController =
            weightDoubleController / 100; // Converte para metros
      }
      if(weightDoubleController == 0.00 || heightDoubleController == 0.00){
        return 0;
      }
      return calculateImcUsecase.executeCount(
          weightDoubleController, heightDoubleController);
    } catch (e) {
      return null;
    }
  }
}

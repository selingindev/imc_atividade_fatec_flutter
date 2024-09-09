import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/core/calculate_imc_usecase.dart';

class ImcController {
  final CalculateImcUsecase calculateImcUsecase;
  final TextEditingController controllerALT = TextEditingController();
  final TextEditingController controllerPES = TextEditingController();

  ImcController(this.calculateImcUsecase);

  double? calculeIMC(){
    try{
      double weightDoubleController = double.parse(controllerALT.text);
      double heightDoubleController = double.parse(controllerPES.text);
      log(weightDoubleController);

            
      return calculateImcUsecase.executeCount(weightDoubleController, heightDoubleController);

    }catch (e){
      print('erro ao calcular');
      return null;
    }
  }

}
import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/core/calculate_imc_usecase.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/pages/app_widget.dart';
import 'package:imc_atividade_fatec_flutter/src/aplication/controllers/imc_controller.dart';
import 'package:imc_atividade_fatec_flutter/src/data/repositories/imc_repository.dart';

void main() {
   // Criação da instância do repositório
  final imcRepository = ImcRepository();
  
  // Criação da instância do caso de uso
  final calculateIMCUseCase = CalculateImcUsecase(imcRepository);
  
  // Criação da instância do controlador
  final imcController = ImcController(calculateIMCUseCase);

  runApp(AppWidget(controller: imcController));
}






















































import 'package:imc_atividade_fatec_flutter/src/domain/repositories/imc_repository.dart';

class CalculateImcUsecase {
  final ImcRepository _repository;

  CalculateImcUsecase(this._repository);

  double executeCount(double weight, double height){
    return _repository.calculateIMC(weight, height);
  }
}
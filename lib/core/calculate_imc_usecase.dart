import 'package:imc_atividade_fatec_flutter/src/domain/interfaces/imc_repository_interface.dart';

class CalculateImcUsecase {
  final IImcRepository _repository;

  CalculateImcUsecase(this._repository);

  double executeCount(double weight, double height){
    return _repository.calculateIMC(weight, height);
  }
}
 import 'package:imc_atividade_fatec_flutter/src/domain/entities/imc_entity.dart';
import 'package:imc_atividade_fatec_flutter/src/domain/interfaces/imc_repository_interface.dart';

class ImcRepository implements IImcRepository{

  @override
  double calculateIMC(double height, double weight){
    final imcEntity = ImcEntity(height: height, weight: weight);
    return imcEntity.calculateIMC();
  }
}
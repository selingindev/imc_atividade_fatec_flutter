// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imc_atividade_fatec_flutter/core/calculate_imc_usecase.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/pages/app_widget.dart';
import 'package:imc_atividade_fatec_flutter/src/aplication/controllers/imc_controller.dart';
import 'package:imc_atividade_fatec_flutter/src/data/repositories/imc_repository.dart';



void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
 
    final imcRepository = ImcRepository();
  
  // Criação da instância do caso de uso
  final calculateIMCUseCase = CalculateImcUsecase(imcRepository);
  
  // Criação da instância do controlador
  final imcController = ImcController(calculateIMCUseCase);
    // Build our app and trigger a frame.    final ImcController controller;
    await tester.pumpWidget(AppWidget(controller: imcController));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

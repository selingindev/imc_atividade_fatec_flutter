import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/pages/home_page.dart';
import 'package:imc_atividade_fatec_flutter/src/aplication/controllers/imc_controller.dart';



class AppWidget extends StatelessWidget {
    final ImcController controller;
    
  const AppWidget({super.key, required this.controller});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'IMC VIEW', controller: controller),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/container_buttons_widgets.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/input_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      var _counter;
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 92, 2, 2),
            toolbarHeight: 70,
            title: Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
              ),
            )),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Image(image: AssetImage("assets/images/gatonormal.jpg")),
                  InputWidget('Peso'),
                  InputWidget('Altura'),
                  InputWidget('Resultado:')
                ])),
            ContainerButtonsWidgets(),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/container_buttons_widgets.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/input_widget.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/text_widget.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/toast_menssage_widget.dart';
import 'package:imc_atividade_fatec_flutter/src/aplication/controllers/imc_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.controller, required this.title});
  final String title;
  final ImcController controller;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? imcResult;
  String _campoSelecionado = '';
  String fotoPeso = 'assets/images/fofinho.png';
   late FocusNode _pesoFocusNode;
   late FocusNode _alturaFocusNode;

     @override
  void initState() {
    super.initState();
    _pesoFocusNode = FocusNode();
    _alturaFocusNode = FocusNode();

    _pesoFocusNode.addListener(() {
      if (_pesoFocusNode.hasFocus) {
        setState(() {
          _campoSelecionado = 'peso';
        });
      }
    });

    _alturaFocusNode.addListener(() {
      if (_alturaFocusNode.hasFocus) {
        setState(() {
          _campoSelecionado = 'altura';
        });
      }
    });
  }
  //LOGICA que nao vale apena por conta do focus do input.
  //void _selecionarCampo(String campo) {
    //setState(() {
      //campoSelecionado = campo;
    //});
  //}

  void _trocarFoto() {
    setState(() {
      if (imcResult! > 30.0) {
        fotoPeso = 'assets/images/gatogordao.jpg';
      } else if (imcResult! > 25.0) {
        fotoPeso = 'assets/images/gordao.jpg';
      } else if (imcResult! > 18.5) {
        fotoPeso = 'assets/images/gatonormal.jpg';
      } else if (imcResult! > 0.1) {
        fotoPeso = 'assets/images/magro.jpg';
      }
      else{
        fotoPeso = 'assets/images/fofinho.png';
      }
    });
  }

  void _adicionarValor(String valor) {
    setState(() {
      if (_campoSelecionado == 'peso') {
        if (valor == '.' && widget.controller.controllerPES.text.length != 2) {
          return ToastMessageWidget.show(context, 'Impossível adicionar um "." nesta posição');
        } else {
          widget.controller.controllerPES.text += valor;
        }
      } 
      else if (_campoSelecionado == 'altura') {
        if (valor == '.' && widget.controller.controllerALT.text.length != 1) {
          return ToastMessageWidget.show(context, 'Impossível adicionar um "." nesta posição'); // Se já tiver um ponto, não adiciona outro
        } else {
          widget.controller.controllerALT.text += valor;
        }
      }
    });
  }

  void _removerValor() {
    setState(() {
      if (_campoSelecionado == 'peso') {
        if (widget.controller.controllerPES.text.isNotEmpty) {
          widget.controller.controllerPES.text = widget
              .controller.controllerPES.text
              .substring(0, widget.controller.controllerPES.text.length - 1);
        }
      } else if (_campoSelecionado == 'altura') {
        if (widget.controller.controllerALT.text.isNotEmpty) {
          widget.controller.controllerALT.text = widget
              .controller.controllerALT.text
              .substring(0, widget.controller.controllerALT.text.length - 1);
        }
      }
    });
  }

void _calculate() {
  setState(() {
    if (widget.controller.controllerALT.text.isNotEmpty &&
        widget.controller.controllerPES.text.isNotEmpty) {
      imcResult = widget.controller.calculeIMC();
      _trocarFoto();
    } else if (widget.controller.controllerPES.text.isEmpty) {
      _campoSelecionado = 'peso';
      _pesoFocusNode.requestFocus();
    } else if (widget.controller.controllerALT.text.isEmpty) {
      _campoSelecionado = 'altura';
      _alturaFocusNode.requestFocus();
    }
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
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Image(
                  image: AssetImage(fotoPeso),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InputWidget(
                controller: widget.controller.controllerPES,
                focusNode: _pesoFocusNode,
                tipoData: 'Peso',
              ),
            ),
            Expanded(
              flex: 1,
              child: InputWidget(
                controller: widget.controller.controllerALT,
                focusNode: _alturaFocusNode,
                tipoData: 'Altura',
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: TextWidget(
                  imcResult == null
                      ? "Calcule o seu IMC"
                      : imcResult != 0 ?
                        "Seu IMC é: ${imcResult!.toStringAsFixed(2)}"
                      : "Impossível IMC calcular, digite um valor diferente de 0"
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: ContainerButtonsWidgets(
                  onTapAdicionar: _adicionarValor,
                  onTapRemover: _removerValor,
                  onTapOperation: _calculate,
                )),
          ],
        ),
      ),
    );
  }
}

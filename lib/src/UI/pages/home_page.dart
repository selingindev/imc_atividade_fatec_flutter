import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/container_buttons_widgets.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/input_widget.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/text_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controllerALT = TextEditingController();
  final TextEditingController _controllerPES = TextEditingController();

  String campoSelecionado = '';

  void _selecionarCampo(String campo) {
    setState(() {
      campoSelecionado = campo;
    });
  }

  void _adicionarValor(String valor) {
    setState(() {
      if (campoSelecionado == 'peso') {
        _controllerPES.text += valor;
      } else if (campoSelecionado == 'altura') {
        _controllerALT.text += valor;
      }
    });
  }
void _removerValor(String valor) {
  setState(() {
    if (campoSelecionado == 'peso') {
      // Remove o último caractere do texto do controlador de peso
      if (_controllerPES.text.isNotEmpty) {
        _controllerPES.text = _controllerPES.text.substring(0, _controllerPES.text.length - 1);
      }
    } else if (campoSelecionado == 'altura') {
      // Remove o último caractere do texto do controlador de altura
      if (_controllerALT.text.isNotEmpty) {
        _controllerALT.text = _controllerALT.text.substring(0, _controllerALT.text.length - 1);
      }
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
            const Expanded(
              flex: 2,
              child: Image(
                image: AssetImage("assets/images/gatonormal.jpg"),
              ),
            ),
            Expanded(
              flex: 1,
              child: InputWidget(
                controller: _controllerPES,
                onTap: () => _selecionarCampo('peso'), tipoData: 'Peso',
              ),
            ),
            Expanded(
              flex: 1,
              child: InputWidget(
                controller: _controllerALT,
                onTap: () => _selecionarCampo('altura'),
                   tipoData: 'Altura',
              ),
            ),
            const Expanded(
              flex: 1,
              child: TextWidget(),
            ),
            Expanded(
              flex: 3,
              child:ContainerButtonsWidgets(
  onTapAdicionar: _adicionarValor,
  onTapRemover: _removerValor,
)

            ),
          ],
        ),
      ),
    );
  }
}

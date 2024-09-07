import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/button_vallue_widget.dart';

class ContainerButtonsWidgets extends StatefulWidget {
  final void Function(String) onTapAdicionar;
  final void Function() onTapRemover;

  const ContainerButtonsWidgets({super.key, 
    required this.onTapAdicionar,
    required this.onTapRemover,
  });

  @override
  State<ContainerButtonsWidgets> createState() => _ContainerButtonsWidgetsState();
}

class _ContainerButtonsWidgetsState extends State<ContainerButtonsWidgets> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: ButtonVallueWidget('7', onTap: () => widget.onTapAdicionar('7'))),
                  Expanded(child: ButtonVallueWidget('8', onTap: () => widget.onTapAdicionar('8'))),
                  Expanded(child: ButtonVallueWidget('9', onTap: () => widget.onTapAdicionar('9'))),
                  Expanded(child: ButtonVallueWidget('-', onTap: () => widget.onTapRemover(), cfontSize: 16.0)),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: ButtonVallueWidget('4', onTap: () => widget.onTapAdicionar('4'))),
                  Expanded(child: ButtonVallueWidget('5', onTap: () => widget.onTapAdicionar('5'))),
                  Expanded(child: ButtonVallueWidget('6', onTap: () => widget.onTapAdicionar('6'))),
                  Expanded(child: ButtonVallueWidget('.', onTap: () => widget.onTapAdicionar('.'))),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: ButtonVallueWidget('1', onTap: () => widget.onTapAdicionar('1'))),
                  Expanded(child: ButtonVallueWidget('2', onTap: () => widget.onTapAdicionar('2'))),
                  Expanded(child: ButtonVallueWidget('3', onTap: () => widget.onTapAdicionar('3'))),
                  Expanded(child: ButtonVallueWidget('0', onTap: () => widget.onTapAdicionar('0'))),
                 const Expanded(child: ButtonVallueWidget('ENTER', cfontSize: 16.0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

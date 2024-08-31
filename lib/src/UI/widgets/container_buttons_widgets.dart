import 'package:flutter/material.dart';
import 'package:imc_atividade_fatec_flutter/src/UI/widgets/button_vallue_widget.dart';

class ContainerButtonsWidgets extends StatelessWidget {
  const ContainerButtonsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  const FractionallySizedBox(
        widthFactor: 0.85,
        child: Center(
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,      
            children: [
                Row(
    
                  children: [
                    ButtonVallueWidget('7', 7),
                    ButtonVallueWidget('8', 8),
                    ButtonVallueWidget('9', 9),
                    ButtonVallueWidget('ENTER', 5, cfontSize: 16.0),
                    
                  ],
                ),
                 Row(
    
                  children: [
                    ButtonVallueWidget('4', 4),
                    ButtonVallueWidget('5', 5),
                    ButtonVallueWidget('6', 6),
                    ButtonVallueWidget('.', 5,),
                    
                  ],
                ),
                 Row(
    
                  children: [
                    ButtonVallueWidget('1', 1),
                    ButtonVallueWidget('2', 2),
                    ButtonVallueWidget('3', 3),
                    ButtonVallueWidget('0', 0,),
                    
                  ],
                ),
               ])));
  }
}

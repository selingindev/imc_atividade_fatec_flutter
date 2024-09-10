import 'package:flutter/material.dart';

class ButtonVallueWidget extends StatelessWidget {
  final String label;

  final double cfontSize;
  final VoidCallback? onTap;

  const ButtonVallueWidget(
    this.label, {
    this.cfontSize = 24.0, // Define um tamanho de fonte padrão
    this.onTap, // Função de callback para ação ao pressionar
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        
        onTap: onTap, // Quando o botão for pressionado, chama o callback
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 129, 3, 3),
            borderRadius: BorderRadius.circular(20.0),
            
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: cfontSize,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
    );
  }
}

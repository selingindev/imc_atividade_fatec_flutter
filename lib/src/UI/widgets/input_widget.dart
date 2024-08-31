import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget(this.tipoData, {super.key});
  
  final String tipoData ;
  @override
    Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 20.0),
     child: FractionallySizedBox(
      widthFactor: 0.8,
      child: TextField(
        keyboardType: TextInputType.none,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: tipoData,
        ),
      ),
    ) 
    );
  }
}
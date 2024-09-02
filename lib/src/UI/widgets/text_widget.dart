import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
   return const Text('O resultado do calculo é:',
   style: TextStyle(fontSize: 20),
   );
  }
}
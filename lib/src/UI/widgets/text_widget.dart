import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
 final dynamic text;
  const TextWidget(  this.text, {super.key});
  
  @override
  Widget build(BuildContext context) {
   return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
     child: Text(text,
     style:  const TextStyle(fontSize: 20),
     textAlign: TextAlign.center,
     ),
   );
  }
}
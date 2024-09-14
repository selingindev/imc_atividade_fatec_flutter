import 'package:flutter/material.dart';
class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String tipoData;
  final FocusNode focusNode;

  const InputWidget({
    required this.tipoData,
    required this.controller,
    super.key, required this.focusNode
  });

  @override
  Widget build(BuildContext context) {
    return   Container(
          margin: const EdgeInsets.only(top: 50.0),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child: TextField(
            controller: controller,
            focusNode: focusNode,
                readOnly: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: tipoData,

            ),
          ),
        );
  }
}


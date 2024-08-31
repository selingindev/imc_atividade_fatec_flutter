import 'package:flutter/material.dart';

class ButtonVallueWidget extends StatelessWidget {
  const ButtonVallueWidget(this.number, this.value, {super.key, double? cfontSize,}): fontSize = cfontSize ?? 30;
  final double fontSize;
  final String number;
  final int? value;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        width: 80,
        height: 80,
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            number,
            style: TextStyle(color: Colors.white, fontSize: fontSize),
          ),
        ));
  }
}

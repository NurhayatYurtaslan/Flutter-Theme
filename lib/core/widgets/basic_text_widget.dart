import 'package:flutter/material.dart';

class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({
    super.key,
    this.label = '',
    this.fontSize = 14,
  });
  const BasicTextWidget.h4({
    super.key,
    this.label = '',
    this.fontSize = 18,
  });
  const BasicTextWidget.h3({
    super.key,
    this.label = '',
    this.fontSize = 22,
  });
  const BasicTextWidget.h2({
    super.key,
    this.label = '',
    this.fontSize = 28,
  });
  const BasicTextWidget.h1({
    super.key,
    this.label = '',
    this.fontSize = 32,
  });

  final String label;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

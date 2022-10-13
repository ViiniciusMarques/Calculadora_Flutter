import 'package:flutter/material.dart';

// creating Stateless Wideget for buttons
class Button extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  const Button(
      {super.key,
      required this.color,
      required this.textColor,
      required this.buttonText,
      required this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.1),
        child: ClipRRect(
          //borderRadius: BorderRadius.circular(50),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

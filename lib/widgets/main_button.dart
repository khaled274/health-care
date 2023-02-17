import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.text,
    required this.borderRadius,
  }) : super(key: key);
  final VoidCallback onPressed;
  final double height;
  final double width;
  final String text;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.lightBlue,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

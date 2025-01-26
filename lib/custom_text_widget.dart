import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color color;
  final TextDecoration decoration; // Updated to use TextDecoration
  final Color decorationColor; // Added to specify the underline color

  const CustomTextWidget({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    required this.textAlign,
    required this.color,
    required this.decoration, 
    required this.decorationColor, 
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: SizedBox(
        width: width,
        height: height,
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: fontWeight,
            decoration: decoration, 
            decorationColor: decorationColor,
          ),
          textAlign: textAlign,
        ),
      ),
    );
  }
}


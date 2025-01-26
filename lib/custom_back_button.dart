import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
        size: 40,
      ),
      onPressed:() {
         Navigator.pop(context);
      },
      padding: EdgeInsets.zero, 
      constraints: const BoxConstraints(), 
    );
  }
}
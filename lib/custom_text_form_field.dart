import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinttext ; 
  final String imagePath;

  final double imageWidth;
  final double imageHeight;
  final double spacing;

  const CustomTextFormField({super.key,
   required this.hinttext, 
   required this.imagePath, 
   required this.imageWidth, 
   required this.imageHeight, 
   required this.spacing});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: 
        Padding(
          padding: EdgeInsets.only(left: 12.0, right: 8.0) ,
          child: Row(
              mainAxisSize: MainAxisSize.min,
             children: [
               Image.asset(imagePath, width: imageWidth, height: imageHeight),
               SizedBox(width: spacing),
             ],
           ),
        ),
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 14, color: Colors.white),
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
          filled: true,
          fillColor: Color(0xFF21412F),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide:
                 BorderSide(color:Colors.white)),
                 enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(50),
                 borderSide: BorderSide(color: Colors.white)
                ),
                 
             ),
    );
  }
}
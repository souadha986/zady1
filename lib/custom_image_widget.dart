import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  const CustomImageWidget({
    super.key,
    required this.imagePath,
    required this.width,
    required this.height,
    
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: 
     Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
  
  }
}

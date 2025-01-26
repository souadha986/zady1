import 'package:flutter/material.dart';
import 'package:app/widgets/custom_image_widget.dart';
import 'package:app/widgets/custom_text_widget.dart';

class PasswordUpdate extends StatelessWidget {
  const PasswordUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
               Center(
                child: CustomTextWidget(
                  text: 'Password Updated',
                  width: double.infinity,
                  height: 50,
                  fontFamily: 'Lobster',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  color: Colors.white,
                  decoration: TextDecoration.none, 
                 decorationColor:Colors.white ,
                ),
              ),
              
              const SizedBox(height: 50),
               Center(
                child: CustomImageWidget(
                  imagePath: 'assets/login/cercle.png',
                  width: 200,
                  height: 200,
                ),
              ),
               
              const SizedBox(height: 40),
               Center(
                child: CustomTextWidget(
                  text: 'Your password has been updated',
                  width: 350,
                  height: 30,
                  fontFamily: 'Lobster',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  color: Colors.white,
                  decoration: TextDecoration.none, 
                 decorationColor:Colors.white ,
                ),
              ),

              
              const SizedBox(height: 100),
               Center(
                child: TextButton(
                onPressed: () {
               Navigator.pushNamed(context, '/signin');
               },
                style: TextButton.styleFrom(
               backgroundColor: Colors.white,
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30) ),
               padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10) ),
               child: CustomTextWidget(
                text: "Sign In",
                color: const Color(0xFF013220),
                width: double.infinity,
                height: 35,
                fontFamily: 'Lobster',
                fontSize: 24,
               fontWeight: FontWeight.w400,
               textAlign: TextAlign.center,
               decoration: TextDecoration.none, 
                 decorationColor:Colors.white ,
               ),
             ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
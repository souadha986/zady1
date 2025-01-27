import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_back_button.dart';
import 'package:flutter_application_2/widgets/custom_image_widget.dart';
import 'package:flutter_application_2/widgets/custom_text_form_field.dart';
import 'package:flutter_application_2/widgets/custom_text_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),

              Center(
                child: CustomImageWidget(
                  imagePath: 'assets/login/zadi.png',
                  width: 364,
                  height: 170,
                ),
              ),

              const SizedBox(height: 50),

              Center(
                child: CustomTextWidget(
                  text: 'Good to see you again!houdaaaaaaaaaa',
                  width: double.infinity,
                  height: 50,
                  fontFamily: 'Lobster',
                  fontSize: 38.0,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  color: Colors.white,
                  decoration: TextDecoration.none, 
                  decorationColor: Colors.white,
                ),
              ),
              
              const SizedBox(height: 60),
              
              CustomTextFormField(
                hinttext: 'E-mail',
                imagePath: 'assets/login/email.png',
                imageHeight: 30,
                imageWidth: 30,
                spacing: 16,
              ),
              
              const SizedBox(height: 25),
              
              CustomTextFormField(
                hinttext: 'Password',
                imagePath: 'assets/login/lock.png',
                imageHeight: 30,
                imageWidth: 30,
                spacing: 16,
              ),
             
              const SizedBox(height: 10),
             
             Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () { Navigator.pushNamed(context, '/resetPassword');},
                  child: CustomTextWidget(
                    text: 'Forget password?',
                    width: 145,
                    height: 30,
                    fontFamily: 'Lobster',
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.right,
                    color: Colors.white,
                    decoration: TextDecoration.underline, 
                    decorationColor: Colors.white,
                  ),
                ),
              ),
             
              const SizedBox(height: 80),
             
              Center(
                child: TextButton(
                onPressed: () {
               // homepage
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
               decorationColor: Colors.white,
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

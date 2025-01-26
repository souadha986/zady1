import 'package:app/widgets/custom_back_button.dart';
import 'package:app/widgets/custom_image_widget.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                  imagePath: 'assets/login/rotation-lock(1).png',
                  width: 200,
                  height: 186,
                ),
              ),

              const SizedBox(height: 50),

              Center(
                child: CustomTextWidget(
                  text: 'Forget your password?',
                  width: 400,
                  height: 60,
                  fontFamily: 'Lobster',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  color: Colors.white,
                  decoration: TextDecoration.none, 
                 decorationColor:Colors.white ,
                ),
              ),
              
              const SizedBox(height: 10),

              Center(
                child: CustomTextWidget(
                  text: 'No worries,we will send you reset instructions',
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

              const SizedBox(height: 60),
              
              CustomTextFormField(
                hinttext: 'E-mail',
                imagePath: 'assets/login/email.png',
                imageHeight: 30,
                imageWidth: 30,
                spacing: 16,
              ),
             
              const SizedBox(height: 140),
             
              Center(
                child: TextButton(
                onPressed: () {Navigator.pushNamed(context, '/checkEmail');},
                style: TextButton.styleFrom(
               backgroundColor: Colors.white,
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30) ),
               padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10) ),
               child: CustomTextWidget(
                text: "Reset Password",
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
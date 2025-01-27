import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_back_button.dart';
import 'package:flutter_application_2/widgets/custom_image_widget.dart';
import 'package:flutter_application_2/widgets/custom_text_form_field.dart';
import 'package:flutter_application_2/widgets/custom_text_widget.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

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
                  imagePath: 'assets/login/password.png',
                  width: 200,
                  height: 170,
                ),
              ),

              const SizedBox(height: 50),

              Center(
                child: CustomTextWidget(
                  text: 'Set new password please',
                  width: double.infinity,
                  height: 50,
                  fontFamily: 'Lobster',
                  fontSize: 35.0,
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
                  text: 'password must be at least 8 character',
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

              const SizedBox(height: 50),
              
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


              const SizedBox(height: 100),
             
              Center(
                child: TextButton(
                onPressed: () {
               Navigator.pushNamed(context, '/passwordUpdated');
               },
                style: TextButton.styleFrom(
               backgroundColor: Colors.white,
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30) ),
               padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10) ),
               child: CustomTextWidget(
                text: "Update",
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

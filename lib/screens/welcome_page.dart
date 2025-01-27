import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_image_widget.dart';
import 'package:flutter_application_2/widgets/custom_text_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CustomImageWidget(
                  imagePath: 'assets/login/zadi.png',
                  width: 364,
                  height: 280,
                ),
              ),
              
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomTextWidget(
                  text: 'Are you ?',
                  width: 200,
                  height: 70,
                  fontFamily: 'Lobster',
                  fontSize: 38.0,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.left,
                  color: Colors.white,
                  decoration: TextDecoration.none, 
                  decorationColor:Colors.white ,
                ),
              ),
              
              SizedBox(height: 20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF21412F),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: MaterialButton(
                    onPressed: () {}, // Navigate to Client's page
                    height: 60,
                    minWidth: 372,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/login/client.png',
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Client',
                          style: TextStyle(
                            fontSize: 33,
                            color: Colors.white,
                            fontFamily: 'Lobster',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 30),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF21412F),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: MaterialButton(
                    height: 60,
                    minWidth: 372,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    onPressed: () {}, // Navigate to Chef's page
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/login/chef.png',
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Chef',
                          style: TextStyle(
                            fontFamily: 'Lobster',
                            fontSize: 33,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             
              SizedBox(height: 90),
             Center(
              child: GestureDetector(
              onTap: () { Navigator.pushNamed(context, '/signin');}, // Navigate to Sign In page
              child: RichText(
              textAlign: TextAlign.center,
             text: TextSpan(
             text: "Already have an account?",
              style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lobster',
              fontSize: 21,
              fontWeight: FontWeight.normal,
            ),
            children: [
            TextSpan(
             text: "Sign In",
             style: TextStyle(
               color: Colors.white,
               fontFamily: 'Lobster',
               fontSize: 21,
               fontWeight: FontWeight.normal,
               decoration: TextDecoration.underline, 
               decorationColor: Colors.white, 
            ),
            ),
            ],
           ),
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

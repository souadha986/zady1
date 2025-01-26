import 'package:flutter/material.dart';
import 'package:app/widgets/custom_back_button.dart';
import 'package:app/widgets/custom_image_widget.dart';
import 'package:app/widgets/custom_text_widget.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

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
                  imagePath: 'assets/login/open-mail.png',
                  width: 200,
                  height: 200,
                ),
              ),
              
              const SizedBox(height: 50),
              Center(
                child: CustomTextWidget(
                  text: 'Please check your e-mail',
                  width: double.infinity,
                  height: 50,
                  fontFamily: 'Lobster',
                  fontSize: 35,
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
                  text: 'We sent a code to your e-mail address',
                  width: double.infinity,
                  height: 30,
                  fontFamily: 'Lobster',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  color: Colors.white,
                  decoration: TextDecoration.none, 
                 decorationColor:Colors.white ,
                ),
              ),
              
              const SizedBox(height: 50),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textFieldOTP(context, first: true, last: false),
                    _textFieldOTP(context, first: false, last: false),
                    _textFieldOTP(context, first: false, last: false),
                    _textFieldOTP(context, first: false, last: true),
                  ],
                ),
              ),
             
              const SizedBox(height: 95),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/setNewPassword');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30)),
                     padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10)
                    ),
                child: CustomTextWidget(
                 text: "Continue",
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
              
              const SizedBox(height: 3),
               Center(
  child: GestureDetector(
    onTap: () {
      // Simulate sending the email again
      Navigator.pushReplacementNamed(context, '/checkEmail');
      // Or use a SnackBar to show a confirmation message (optional)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Code sent again!')),
      );
    },
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Don't receive an e-mail? ",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Lobster',
          fontSize: 21,
          fontWeight: FontWeight.normal,
        ),
        children: [
          TextSpan(
            text: "Sent Again",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lobster',
              fontSize: 21,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline, // Underline this part
              decorationColor: Colors.white, // Underline color
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

  Widget _textFieldOTP(BuildContext context, {bool first = false, bool last = false}) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 70,
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && !last) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && !first) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            filled: true,
            fillColor: const Color(0xFF21412F),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

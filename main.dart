import 'package:app/screens/check_email.dart';
import 'package:app/screens/password_update.dart';
import 'package:app/screens/reset_password.dart';
import 'package:app/screens/set_new_password.dart';
import 'package:app/screens/sign_in.dart';
import 'package:app/screens/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
     initialRoute: '/',
     routes: {
      '/': (context) => WelcomePage(),
      '/signin': (context) => SignIn(),
      '/resetPassword': (context) => ResetPassword(),
      '/checkEmail': (context) => CheckEmail(),
      '/setNewPassword': (context) => SetNewPassword(),
      '/passwordUpdated': (context) => PasswordUpdate(),
    },
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xFF21412F),
    ),
    
   );
  }
}

 
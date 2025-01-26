import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/check_email.dart';
import 'package:flutter_application_2/screens/password_update.dart';
import 'package:flutter_application_2/screens/reset_password.dart';
import 'package:flutter_application_2/screens/sign_in.dart';
import 'package:flutter_application_2/screens/welcome_page.dart';

import 'screens/set_new_password.dart';

void main() {
  runApp(MyApp());
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

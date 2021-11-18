import 'package:cadastro_exercicio/pages/login.page.dart';
import 'package:cadastro_exercicio/pages/register/register.page.dart';
import 'package:cadastro_exercicio/pages/verification/verification.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static const String inithialRoute = "/";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: inithialRoute,
      routes: {
        inithialRoute: (context) => Login(),
        Verification.route: (context) => Verification(),
        Register.route: (context) => Register(),
      },
    );
  }
}

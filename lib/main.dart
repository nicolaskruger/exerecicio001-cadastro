import 'package:cadastro_exercicio/pages/login.page.dart';
import 'package:cadastro_exercicio/pages/register/register.page.dart';
import 'package:cadastro_exercicio/pages/verification/verification.page.dart';
import 'package:cadastro_exercicio/utils/colors.utils.dart';
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
      theme: ThemeData(
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: COLORS_UTIL.BLACK,
              fontSize: 34,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(color: COLORS_UTIL.GREY),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: COLORS_UTIL.RED),
            ),
          )),
      initialRoute: inithialRoute,
      routes: {
        inithialRoute: (context) => Login(),
        Verification.route: (context) => Verification(),
        Register.route: (context) => Register(),
      },
    );
  }
}

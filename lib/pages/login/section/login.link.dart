import 'dart:io';

import 'package:cadastro_exercicio/pages/register/register.page.dart';
import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginLink extends StatelessWidget {
  const LoginLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _goToRegister(BuildContext context) {
      Navigator.pushNamed(context, Register.route);
    }

    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => _goToRegister(context),
        child: Text(
          "Don't have an account",
          style: TextStyle(color: COLORS_UTIL.RED),
        ),
      ),
    );
  }
}

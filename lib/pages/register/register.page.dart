import 'package:cadastro_exercicio/components/custom_app_barr.componet.dart';
import 'package:cadastro_exercicio/components/custom_button.compont.dart';
import 'package:cadastro_exercicio/components/icon_comeback.component.dart';
import 'package:cadastro_exercicio/components/title.component.dart';
import 'package:cadastro_exercicio/pages/register/section/register.form.dart';
import 'package:cadastro_exercicio/pages/verification/verification.page.dart';
import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static const route = "/register";
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  _goToVerify(BuildContext context) {
    Navigator.pushNamed(context, Verification.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: COLORS_UTIL.WHITE,
        body: Container(
          padding: EdgeInsets.fromLTRB(19, 0, 19, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconComeback(),
              MyTitle(text: "Register"),
              FormRegister(),
              CustomButton(
                text: "register",
                onPressed: _goToVerify,
              )
            ],
          ),
        ));
  }
}

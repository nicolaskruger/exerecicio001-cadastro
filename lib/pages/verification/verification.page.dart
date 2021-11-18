import 'package:cadastro_exercicio/components/custom_button.compont.dart';
import 'package:cadastro_exercicio/components/icon_comeback.component.dart';
import 'package:cadastro_exercicio/components/title.component.dart';
import 'package:cadastro_exercicio/pages/verification/section/verification.form.dart';
import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);
  static const route = "/verification";

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
              MyTitle(
                text: "Veify",
                padddingBottom: 10,
              ),
              Text(
                  "a four digit verification code has been sent to your mobile number"),
              VerificationForm(),
              CustomButton(
                text: "register",
              ),
              CustomButton(
                text: "resend",
                colorBackground: COLORS_UTIL.WHITE,
                colorText: COLORS_UTIL.RED,
              )
            ],
          ),
        ));
  }
}

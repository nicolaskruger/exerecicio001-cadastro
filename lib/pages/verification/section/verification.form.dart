import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationForm extends StatelessWidget {
  const VerificationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 20),
        child: VerificationCode(
          textStyle: TextStyle(fontSize: 20.0, color: COLORS_UTIL.BLACK),
          keyboardType: TextInputType.number,
          // in case underline color is null it will use primaryColor: Colors.red from Theme
          underlineColor: COLORS_UTIL.RED,
          length: 4,
          // clearAll is NOT required, you can delete it
          // takes any widget, so you can implement your design

          onCompleted: (String value) {},
          onEditing: (bool value) {},
        ));
  }
}

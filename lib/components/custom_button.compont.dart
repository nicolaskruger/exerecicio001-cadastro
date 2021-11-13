import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {  },
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(COLORS_UTIL.WHITE),
        backgroundColor: MaterialStateProperty.all<Color>(COLORS_UTIL.RED),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50))
      ),
      child: Text(text),
    );
  }
}

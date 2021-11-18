import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      this.onPressed,
      this.colorText = COLORS_UTIL.WHITE,
      this.colorBackground = COLORS_UTIL.RED})
      : super(key: key);

  final String text;

  final Function(BuildContext context)? onPressed;

  final Color colorText;
  final Color colorBackground;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed!(context);
      },
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(colorText),
          backgroundColor: MaterialStateProperty.all<Color>(colorBackground),
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 50))),
      child: Text(text),
    );
  }
}

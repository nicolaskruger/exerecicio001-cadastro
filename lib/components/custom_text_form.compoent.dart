import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustonTextFormProps {
  final String label;
  final String? Function(String?)? validate;

  CustonTextFormProps(this.label, this.validate);
}

class CustomTextForm extends StatelessWidget {
  final CustonTextFormProps props;

  const CustomTextForm({Key? key, required this.props}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputDecoration = Theme.of(context).inputDecorationTheme;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        validator: props.validate,
        cursorColor: COLORS_UTIL.RED,
        decoration: InputDecoration(
          labelText: props.label,
          labelStyle: inputDecoration.labelStyle,
          focusedBorder: inputDecoration.focusedBorder,
        ),
      ),
    );
  }
}

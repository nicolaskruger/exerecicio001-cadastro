import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({Key? key, required this.items, required this.hint})
      : super(key: key);

  final List<String> items;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text(hint),
      isExpanded: true,
      items: [...items.map((e) => DropdownMenuItem(value: e,child: Text(e)))],
      underline: Container(
        height: 2,
        color: COLORS_UTIL.RED,
      ),
    );
  }
}

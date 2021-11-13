import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_color_component.dart';

class IconComeback extends StatelessWidget {
  const IconComeback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: IconColor(
          icon: Icon(Icons.west),
          color: COLORS_UTIL.BLACK,
        ),
        label: Text(""));
  }
}

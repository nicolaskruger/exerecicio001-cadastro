import 'package:flutter/cupertino.dart';

class IconColor extends StatelessWidget {

  final Color color;
  final Icon icon;

  const IconColor({Key? key, required this.color, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconTheme(data: IconThemeData(color: color), child: icon);
  }
}

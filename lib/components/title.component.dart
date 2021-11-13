import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';

class MyTitle extends StatelessWidget {
  final String text;

  const MyTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: COLORS_UTIL.BLACK,
        fontSize: 30
      ),
    );
  }
}

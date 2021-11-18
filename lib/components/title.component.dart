import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';

class MyTitle extends StatelessWidget {
  final String text;

  const MyTitle({Key? key, required this.text, this.padddingBottom = 50})
      : super(key: key);
  final double padddingBottom;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, padddingBottom),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(color: COLORS_UTIL.BLACK, fontSize: 30),
      ),
    );
  }
}

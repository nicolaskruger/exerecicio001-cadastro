import 'package:cadastro_exercicio/utils/colors.utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}

import 'package:cadastro_exercicio/components/custom_text_form.compoent.dart';
import 'package:flutter/cupertino.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.props,
  }) : super(key: key);

  final List<CustonTextFormProps> props;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Form(
          child: Column(
        children: [
          ...props.map((e) => CustomTextForm(
                props: e,
              ))
        ],
      )),
    );
  }
}

import 'package:cadastro_exercicio/components/custom_app_barr.componet.dart';
import 'package:cadastro_exercicio/components/custom_button.compont.dart';
import 'package:cadastro_exercicio/components/custom_text_form.compoent.dart';
import 'package:cadastro_exercicio/components/title.component.dart';
import 'package:cadastro_exercicio/pages/login/section/login.form.dart';
import 'package:cadastro_exercicio/pages/login/section/login.link.dart';
import 'package:cadastro_exercicio/pages/register/register.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final String? Function(String?)? validate = (val) {
  if (val == null || val.length <= 3) {
    return "Invalido";
  }
};

final List<CustonTextFormProps> loginProps = [
  CustonTextFormProps("Email Addrress", validate),
  CustonTextFormProps("Password", validate),
];

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: EdgeInsets.fromLTRB(19, 0, 19, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTitle(text: "Login"),
              LoginForm(
                props: [...loginProps],
              ),
              LoginLink(),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                text: "login",
                onPressed: (context) {
                  Navigator.pushNamed(context, Register.route);
                },
              ),
            ],
          ),
        ));
  }
}

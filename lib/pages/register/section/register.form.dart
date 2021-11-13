import 'package:cadastro_exercicio/components/custom_text_form.compoent.dart';
import 'package:flutter/cupertino.dart';

final String? Function(String?)? validate = (val) {
  if (val == null || val.length <= 3) {
    return "Invalido";
  }
};

final List<String> inputsLabels = [
  "Full Name",
  "Email Address",
  "Mobile Number",
  "Country",
  "Password",
  "Confirm Password",
  "Referal Code"
];

class FormRegister extends StatelessWidget {
  const FormRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        ...inputsLabels
            .map((e) => CustomTextForm(props: CustonTextFormProps(e, validate)))
      ],
    ));
  }
}

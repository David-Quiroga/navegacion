import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key}) ;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          InputText(
            hint: "Email Address",
            label: "Email Address",
            keyboard: TextInputType.emailAddress,
          )
        ],
      ),
    );
  }
}
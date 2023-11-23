import 'package:flutter/material.dart';
import 'package:navegar/src/pages/menu_lateral.dart';
import 'package:navegar/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _email = "";
  String _password = "";

  get child => null;

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          InputText(
              hint: "Email Address",
              label: "Email Addres",
              keyboard: TextInputType.emailAddress,
              icono: Icon(Icons.verified_user),
              onChanged: (data) {
                _email = data!;
              },
              validator: (data) {
                if (!data!.contains("@")) {
                  return "invalido";
                }
                return null!;
              }),
          Divider(
            height: 30.0,
          ),
          InputText(
              hint: "Password",
              label: "Password",
              obsecure: false,
              icono: Icon(Icons.lock_clock),
              onChanged: (data) {
                _password = data!;
              },
              validator: (data) {
                if (data?.trim().length == 0) {
                  return "invalido password";
                }
                return null!;
              }),
          Divider(
            height: 30.0,
          ),
          SizedBox(
            width: 300.0,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {
                if (_email == "dsa.quiroga@yavirac.edu" && _password == "1234") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuLateral()),
                  );
                } else {
                  final snackBar = SnackBar(
                    content: Text('Los datos ingresados son incorrectos'),
                    action: SnackBarAction(
                      label: 'Cerrar',
                      onPressed: () {
                        // Puedes agregar alguna acción al presionar el botón en el SnackBar
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Text(
                "Ingresar",
                style: TextStyle(
                    color: Color.fromARGB(255, 222, 183, 123),
                    fontFamily: "Agbalumo",
                    fontSize: 30.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
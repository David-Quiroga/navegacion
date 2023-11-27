import 'package:flutter/material.dart';
import 'package:navegar/src/pages/menu_lateral.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: "Email Address",
              labelText: "Email Address",
              icon: Icon(Icons.verified_user),
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (data) {
              setState(() {
                _email = data;
              });
            },
            validator: (data) {
              if (data == null || !data.contains("@")) {
                return "Invalido";
              }
              return null;
            },
          ),
          Divider(
            height: 30.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Password",
              icon: Icon(Icons.lock_clock),
            ),
            obscureText: true,
            onChanged: (data) {
              setState(() {
                _password = data;
              });
            },
            validator: (data) {
              if (data == null || data.trim().length == 0) {
                return "Invalido password";
              }
              return null;
            },
          ),
          Divider(
            height: 30.0,
          ),
          SizedBox(
            width: 300.0,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {
                if (_email == "dsa.quiroga@yavirac.edu.ec" &&
                    _password == "1234") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuLateral(),
                    ),
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
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Ingresar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

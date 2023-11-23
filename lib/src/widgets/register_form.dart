import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/input_text.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _nombre = "";
  String _apellido = "";
  String _numero = "";
  String _cedula = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          InputText(
              hint: "Nombre",
              label: "Nombre",
              icono: Icon(Icons.person_pin),
              onChanged: (data) {
                _nombre = data!;
              },
              validator: (data) {
                if (!data!.contains("")) {
                  return "invalido";
                }
                return null!;
              }),
          Divider(
            height: 30.0,
          ),
          InputText(
              hint: "Apellido",
              label: "Apellido",
              obsecure: false,
              icono: Icon(Icons.person),
              onChanged: (data) {
                _apellido = data!;
              },
              validator: (data) {
                if (!data!.contains("")) {
                  return "invalido";
                }
                return null!;
              }),
          Divider(
            height: 30.0,
          ),
          InputText(
              hint: "Usuario",
              label: "Usuario",
              obsecure: false,
              icono: Icon(Icons.account_box),
              onChanged: (data) {
                _numero = data!;
              },
              validator: (data) {
                if (!data!.contains("")) {
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
                _cedula = data!;
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
              onPressed: () {},
              child: Text(
                "Registrar",
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
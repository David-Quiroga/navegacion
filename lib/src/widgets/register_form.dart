// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/input_text.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _apellido = "";
  String _cedula = "";
  String _email = "";
  String _nombre = "";
  String _numero = "";
  bool _password = false;
  bool _visa = false;
  bool _mastercard = false;
  bool _americanExpress = false;
  bool _discover = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: "Nombre",
              labelText: "Nombre",
              icon: Icon(Icons.person_pin),
            ),
            validator: (data) {
              if (data == null || data.isEmpty) {
                return "El campo de nombre no puede estar vacío";
              } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(data)) {
                return "El nombre solo puede contener letras";
              }
              return null!;
            },
          ),
          Divider(
            height: 30.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Apellido",
              labelText: "Apellido",
              icon: Icon(Icons.person),
            ),
            onChanged: (data) {
              _apellido = data;
            },
            validator: (data) {
              if (data == null || data.isEmpty) {
                return "El campo de apellido no puede estar vacío";
              } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(data)) {
                return "El apellido solo puede contener letras";
              }
              return null;
            },
          ),
          Divider(
            height: 30.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Número de teléfono",
              labelText: "Número de teléfono",
              icon: Icon(Icons.phone),
            ),
            keyboardType: TextInputType.phone,
            onChanged: (data) {
              _numero = data;
            },
            validator: (data) {
              if (data == null || data.isEmpty) {
                return "El campo de número de teléfono no puede estar vacío";
              } else if (!RegExp(r'^[0-9]+$').hasMatch(data)) {
                return "El número de teléfono solo puede contener números";
              }
              return null;
            },
          ),
          Divider(
            height: 30.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Correo Electrónico",
              labelText: "Correo Electrónico",
              icon: Icon(Icons.email),
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (data) {
              _email = data;
            },
            validator: (data) {
              if (data == null || data.isEmpty) {
                return "El campo de correo electrónico no puede estar vacío";
              } else if (!data.contains("@")) {
                return "El correo electrónico debe contener al menos un símbolo '@'";
              }
              return null;
            },
          ),
          Divider(
            height: 30.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Contraseña",
              labelText: "Contraseña",
              icon: Icon(Icons.lock_clock),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _password = !_password;
                  });
                },
                icon: Icon(
                  _password ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            onChanged: (data) {
              _cedula = data;
            },
            validator: (data) {
              if (data == null || data.isEmpty) {
                return "El campo de contraseña no puede estar vacío";
              }
              // Puedes agregar otras validaciones según tus requisitos
              return null;
            },
          ),
          Divider(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "Elije tu tipo de tarjeta",
              style: TextStyle(fontSize: 30),
            ),
          ),
          CheckboxListTile(
            title: Text("Visa"),
            value: _visa,
            onChanged: (value) {
              setState(() {
                _visa = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("MasterCard"),
            value: _mastercard,
            onChanged: (value) {
              setState(() {
                _mastercard = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("AmercianExpress"),
            value: _americanExpress,
            onChanged: (value) {
              setState(() {
                _americanExpress = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("Discover"),
            value: _discover,
            onChanged: (value) {
              setState(() {
                _discover = value!;
              });
            },
          ),
          SizedBox(
            width: 300.0,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {}
              },
              child: Text(
                "Registrar",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

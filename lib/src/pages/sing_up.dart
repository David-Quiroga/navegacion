import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/icon_containers.dart';

import '../widgets/register_form.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity, //Se ajusta al tamaño
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 165, 77, 224),
            Color.fromARGB(19, 65, 11, 190)
          ], begin: Alignment.topCenter)),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              //!Aqui se ubica el URL de una imagen
              IconContainers(url: "images/descarga.jpg"),
              Text(
                "Registro de Usuarios",
                style: TextStyle(
                  fontFamily: "Agbalumo",
                  fontSize: 30.0,
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Text(
                "Pantalla 3",
                style: TextStyle(
                  fontFamily: "Agbalumo",
                  fontSize: 40.0,
                ),
              ),

              Divider(
                height: 30.0,
              ),
              Register()
            ],
          ),
        ),
      ),
    );
  }
}
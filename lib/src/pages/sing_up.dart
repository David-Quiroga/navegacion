import 'package:flutter/material.dart';
import 'package:navegar/src/widgets/icon_containers.dart';
import '../widgets/register_form.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 210, 193, 221),
                Color.fromARGB(19, 65, 11, 190),
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              Center(
                child: IconContainers(url: "images/descarga.jpg"),
              ),
              Center(
                child: Text(
                  "Registro de Usuarios",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Text(
                "Pantalla 3",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Register(),
            ],
          ),
        ),
      ),
    );
  }
}

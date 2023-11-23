import 'package:flutter/material.dart';
import 'package:navegar/src/pages/home_page.dart';
import 'package:navegar/src/widgets/icon_containers.dart';
import 'package:navegar/src/widgets/login_form.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
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
                "Login",
                style: TextStyle(
                  fontFamily: "Agbalumo",
                  fontSize: 30.0,
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Text(
                "Pantalla 2",
                style: TextStyle(
                  fontFamily: "Agbalumo",
                  fontSize: 40.0,
                ),
              ),

              Divider(
                height: 30.0,
              ),
//aqui llamanos a la pantalla de formulario
              LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
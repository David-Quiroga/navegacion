import 'package:flutter/material.dart';

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
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 77, 199, 224),
                Color.fromARGB(20, 184, 180, 154)
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              //! Aquí se ubica el URL de una imagen
              SizedBox(
                width: 100.0, // Ajusta el ancho de la imagen según tus necesidades
                height: 100.0, // Ajusta la altura de la imagen según tus necesidades
                child: Image.asset("images/lobo.jpg"),
              ),
              Text(
                "Registro Usuario",
                style: TextStyle(
                  fontFamily: "PermanentMarker",
                  fontSize: 30.0,
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Text(
                "Pantalla N3",
                style: TextStyle(
                  fontFamily: "PermanentMarker",
                  fontSize: 40.0,
                ),
              ),
              Divider(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 
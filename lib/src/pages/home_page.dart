import 'package:flutter/material.dart';
import 'package:navegar/src/pages/sing_in.dart';
import 'package:navegar/src/pages/sing_up.dart';
import 'package:navegar/src/widgets/icon_containers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
          children: <Widget>[
            //! Aquí se ubica el URL de una imagen
            SizedBox(
              width: 100.0,
              height: 100.0,
              child: Image.asset("images/descarga.jpg"),
            ),
            Divider(
              height: 30.0,
            ),
            Text(
              "Bienvenidos a mi curso",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Divider(
              height: 30.0,
            ),
            Text(
              "Ejercicio N.-003",
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            Divider(
              height: 30,
            ),
            SizedBox(
              width: 60.0,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => SingUp());
                  Navigator.push(context, route);
                },
                child: Text(
                  "SING UP",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Divider(
              height: 30.0,
            ),
            SizedBox(
              width: 60.0,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => SingIn());
                  Navigator.push(context, route);
                },
                child: Text(
                  "SING IN",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

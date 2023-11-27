import 'package:flutter/material.dart';
import 'package:navegar/src/pages/home_page.dart';
import 'package:navegar/src/widgets/icon_containers.dart';
import 'package:navegar/src/widgets/login_form.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
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
                  "Login",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(
                height: 30.0,
              ),
              Text(
                "Pantalla 2",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              Divider(
                height: 30.0,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

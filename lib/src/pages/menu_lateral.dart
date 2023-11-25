import 'package:flutter/material.dart';

class MenuLateral extends StatefulWidget {
  const MenuLateral({super.key});

  @override
  State<MenuLateral> createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Principal"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Center(
          child: Text("Contenido del Proyecto"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("David Quiroga"),
              accountEmail: Text("dsa.quiroga@yavirac.edu.ec"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/main.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage: AssetImage("images/lobo.jpg"),
                ),
                CircleAvatar(
                  foregroundImage: AssetImage("images/lobo.jpg"),
                )
              ],
              decoration: BoxDecoration(color: Colors.indigo),
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Text("Etiqueta 1"),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text("Inicio"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag_outlined),
              title: Text("Compras"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Favoritos"),
            ),
            //!ETIQUETA 2
            Padding(
              padding: EdgeInsets.all(14),
              child: Text("Etiqueta 2"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Perfil"),
            ),
            ListTile(
              leading: Icon(Icons.build_outlined),
              title: Text("Configuracion"),
            ),
            ListTile(
              leading: Icon(Icons.dangerous_outlined),
              title: Text("Salir"),
            )
          ],
        ),
      ),
    );
  }
}

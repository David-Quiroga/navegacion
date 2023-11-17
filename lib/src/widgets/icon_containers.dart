import 'package:flutter/material.dart';

class IconContainers extends StatelessWidget {
  const IconContainers({key, required this.url})
  : assert(url!=null), super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 100.0,
        backgroundColor: Color.fromARGB(255, 183, 58, 58),
        backgroundImage: AssetImage(this.url),
      ),
    );
  }       
}
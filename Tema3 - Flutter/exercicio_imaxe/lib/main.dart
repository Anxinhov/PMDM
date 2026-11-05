import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "exercicio imaxe",home: PantallaPrincipal(),);
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Image.asset("assets/img/Byron.jpg"));
  }
}

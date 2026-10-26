import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Ejercicio1",home: PantallaPrincipal());
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Text("Titulo de la aplicacion")),body: Text("Contido"));
  }
}
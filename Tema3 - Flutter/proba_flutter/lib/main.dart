import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "App de Exemplo" , home: PantallaPrincipal());
  }
}

class PantallaPrincipal extends StatelessWidget {
  const  PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Visca Barça"), appBar: AppBar(title: Text("Tot el camp"),),);
  }
}
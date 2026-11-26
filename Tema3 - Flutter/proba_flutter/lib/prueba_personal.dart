import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "calculadora",
    home: PantallaCalculadora(),
  ));
}

class PantallaCalculadora extends StatefulWidget {
  const PantallaCalculadora({super.key});

  @override
  State<PantallaCalculadora> createState() => _PantallaCalculadoraState();
}

class _PantallaCalculadoraState extends State<PantallaCalculadora> {
  int _variable1 = 0;
  String _operacion = "";
  int _variable2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      
    ],),);
  }
}
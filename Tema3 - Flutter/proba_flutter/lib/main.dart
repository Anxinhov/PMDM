import 'package:flutter/material.dart';

final tema = ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 0)),);
void main(List<String> args) {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Mi aplicación", home: PantallaPrincipal(),debugShowCheckedModeBanner: false,theme: tema,);
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:MyWidgetPrincipal()); 
      
  }
}

class MiTexto extends StatelessWidget {
  String texto;
  final Color? corFondo;
  MiTexto(this.texto,{super.key,this.corFondo});

  @override
  Widget build(BuildContext context) {
    return Text(texto,textAlign: TextAlign.center,style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 124, 52, 47), backgroundColor: corFondo, letterSpacing: 10.0, height: 1.0));
  }
}

class OMeuIcono extends StatelessWidget {
  const OMeuIcono({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.favorite, size: 100.0, color: Colors.red, semanticLabel: "Visca Barça",);
  }
}

class AMinaImaxeLocal extends StatelessWidget {
  const AMinaImaxeLocal({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/img/Byron.png");
  }
}

class MyWidgetPrincipal extends StatelessWidget {
  
  const MyWidgetPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    var alumnos = ["Xurxo", "Anxo", "Xoel", "Iria", "David", "Sergio", "Roi"];
    return Scaffold(
      body: 
        Column(children: [
          Text("Hola",style: (tema.textTheme.titleLarge),),
          SizedBox(height: 16.0,),
          FilledButton(onPressed: () => print("Boton pulsado"), child: Text("Preme aqui")),
          SizedBox(height: 16.0,),
          ElevatedButton(onPressed: () => print("Boton clickeado"), child: Text("Presiona aqui"))
        ],)
    );
  }
}

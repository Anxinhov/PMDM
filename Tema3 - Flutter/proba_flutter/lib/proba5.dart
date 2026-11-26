import 'package:material_ui/material_ui.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: PantallaPrincipal(),));
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Ejercicio contadores"),),body: Row(children: [
      Column(children: [
        Contador(colorFondo: Colors.red, colorTexto: Colors.blue, numero: 5, textoBoton: "Pulsa para sumar 5"),
        SizedBox(height: 16,),
        Contador(colorFondo: Colors.blue, colorTexto: Colors.red, numero: 2, textoBoton: "Suma 2")
      ],),
      SizedBox(width: 16,),
      Column(children: [
        Contador(colorFondo: Colors.black, colorTexto: Colors.white, numero: 7, textoBoton: "+7"),
        SizedBox(height: 16,),
        Contador(colorFondo: Colors.orange, colorTexto: Colors.green, numero: 3, textoBoton: "Aumentar 3")
      ],)
    ],),);
  }
}

class Contador extends StatefulWidget {
  final Color colorFondo;
  final Color colorTexto;
  final int numero;
  final String textoBoton;
  const Contador({super.key,required this.colorFondo,required this.colorTexto,required this.numero,required this.textoBoton});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  var contador = 0;
  @override
  Widget build(BuildContext context) {
    return Container(color: widget.colorFondo, child: Center(child: Column(children: [
      Text("Contador: $contador",style: TextStyle(color: widget.colorTexto),),
      ElevatedButton(onPressed: () => setState(() => contador += widget.numero), child: Text(widget.textoBoton,style: TextStyle(color: widget.colorTexto),))
    ],),),);
  }
}
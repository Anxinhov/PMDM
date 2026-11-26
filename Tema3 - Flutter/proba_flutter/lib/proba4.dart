import 'package:material_ui/material_ui.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: PantallaPrincipal(),));  
}

class PantallaPrincipal extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("PantallaPrincipal")),body: Center(child: ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Contador(numero: 2))), child: Text("Ir al contador"))),);
  }
}

class Contador extends StatefulWidget {
  final int numero;
  const Contador({required this.numero, super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("O meu contador"),),body: Center(
      child: Column(children: [
        Text("Contador: $contador"),
        ElevatedButton(onPressed: () => setState(() {
          contador += widget.numero;
        }), child: Text("Sumar ${widget.numero}"))
      ],),
    ),);
  }
}


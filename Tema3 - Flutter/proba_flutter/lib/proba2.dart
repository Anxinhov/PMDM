import 'package:material_ui/material_ui.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Prueba 3.3",
    home: PantallaContador(),
  ));
}

class PantallaContador extends StatefulWidget {
  const PantallaContador({super.key});

  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}

class _PantallaContadorState extends State<PantallaContador> {
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Text("Contador: $_contador"),
      ElevatedButton(onPressed: () => setState(() => _contador++), child: Text("Incrementar contador"))
    ],) ,);
  }
}
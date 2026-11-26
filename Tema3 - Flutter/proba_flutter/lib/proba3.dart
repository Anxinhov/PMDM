import 'package:material_ui/material_ui.dart';

void main() {
  runApp(MaterialApp(home: Pantalla1(),title: "Proba 3.5",));
}

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Fiestra 1"),),body: Center(child: ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute<void>(builder: (context) => Pantalla2(),),), child: Text("Seguinte fiestra"))),);
  }
}

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Fiestra 2"),),body: Center(child:Column(children: [ 
      ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Volver")),
      SizedBox(height: 16,),
      ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute<void>(builder: (context) => Pantalla3(),),), child: Text("Seguinte fiestra"))
      ]),));
  }
}

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Fiestra 3"),),body: Center(child:Column(children: [ 
      ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Volver")),
      SizedBox(height: 16,),
      IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute<void>(builder: (context) => Pantalla1(),),), icon: Icon(Icons.house))
      ]),));
  }
}

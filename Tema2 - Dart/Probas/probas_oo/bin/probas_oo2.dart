class  Persoa{
  String nome;
  Persoa({required this.nome});
  @override
  String toString (){
    return "Persoa - Nome: $nome";
  }
  void presentarse(){
    print("Hola son $nome");
  }
  static bool eSerVivo(){
    return true;
  }
}

class Profesor extends Persoa{
  String centro;
  Profesor({required super.nome, this.centro = "Sen centro"});
  @override
  void presentarse() {
    print("Hola son $nome e traballo no $centro");
  }
}

class Curso{
  String grupo;
  List<Profesor> profes;
  Profesor titor;
  void Function() aoComenzar;
  Curso({required this.grupo, required this.profes, required this.titor,required this.aoComenzar});

  comezar(){
    print("Hola, grupo $grupo eu son o titor ${titor.nome}");
    aoComenzar();
  }
}

avisar(){
  print("Benvidos a PMDM, 2º DAM");
}

void main(List<String> args) {
var Anxo = Persoa(nome: "Anxo Vázquez Manzano");
  print(Anxo);
  Anxo.presentarse();
  var diego = Profesor(nome: "Diego",centro: "IES San Mamede");
  diego.presentarse();
  print(Persoa.eSerVivo());
  var DAM = Curso(grupo: "A", profes: [], titor: diego, aoComenzar: avisar);
  DAM.comezar();
  var DAM2 = Curso(grupo: "A", profes: [], titor: diego, aoComenzar: () => print("Peperra"));
  DAM2.comezar();
}
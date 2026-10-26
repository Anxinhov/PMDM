class Profesor {
  String nome = "";
  String centro = "IES San Mamede";

  Profesor({required this.nome,this.centro = "IES San Mamede"});

  Profesor.desconocido() : nome = "Descoñecido", centro = "Sen centro";
  
  void presentarse(){
    print("Ola, son ${nome} do ${centro}");
  }
}

class UtilidadesNotas {
  static double media(double primeira,double segunda) => (primeira + segunda) /2;
}

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
}

void main(List<String> args) {
  var Diego = Profesor(nome: "Diego");
  Diego.nome = "Diego";
  Diego.presentarse();
  var desconocido = Profesor.desconocido();
  desconocido.presentarse();
  double resultdo = 0.0;
  resultdo = UtilidadesNotas.media(5.2, 4.3);
  print(resultdo);
  var Anxo = Persoa(nome: "Anxo Vázquez Manzano");
  print(Anxo);
  Anxo.presentarse();
}

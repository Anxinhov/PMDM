void main(List<String> args) {
  List<String> nombres = ["Anxo","Xurxo","Xoel"];
  print("For clasico:");
  for(int i=0;i<nombres.length;i++){
    print(nombres[i]);
  }
  print("For - in:");
  for(var s in nombres){
    print(s);
  }
  print("forEach:");
  nombres.forEach((String s) => print(s));
}
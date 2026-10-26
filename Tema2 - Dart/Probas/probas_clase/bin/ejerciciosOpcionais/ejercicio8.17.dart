procesar(List<String> items, {void Function(String)? onItem}){
  for(var i in items){
    if(onItem == null){
      print(i);
    }else{
      onItem(i);
    }
  }
}
void imprimir(String n){
  print("Almendrado: $n");
}
void main(List<String> args) {
  List<String> froitas = ["mazá","kiwi","fresa","melón","sandía"];
  procesar(froitas);
  procesar(froitas,onItem: imprimir);
  procesar(froitas,onItem: (String n) => print("Visca Barça: $n"));
}
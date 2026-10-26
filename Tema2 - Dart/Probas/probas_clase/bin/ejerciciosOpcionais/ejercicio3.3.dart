void main(List<String> args) {
  Object numero = 42;
  if(numero is int){
    print("Es par?${numero.isEven}");
  }
  numero as int;
  print("Es par?${numero.isEven}");
}


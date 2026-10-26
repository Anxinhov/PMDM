int comparar (int num1,int num2){
  return num1.compareTo(num2);
}
bool test (int num){
  if(num >= 5){
    return true;
  }else{
    return false;
  }
}
bool suspenso (int num){
  if(num<5){
    return true;
  }else{
    return false;
  }
}
main() {
  List<int> notas = [4,7,8,4,1];
  notas.sort(comparar);
  print(notas);
  List <int> aprobados = notas.where(test).toList();
  print(aprobados);
  List <int> suspensos = notas.where(suspenso).toList();
  print(suspensos);
  
}
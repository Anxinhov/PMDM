({int maximo, int minimo})minMax(List<int> l) {
  int max = l[0];
  int min = l[0];
  for(int i=0;i<l.length;i++){
    if(max < l[i]){
      max = l[i];
    }
    if(min > l[i]){
      min = l[i];
    }
  }
  return (maximo: max,minimo: min);
}
void main(List<String> args) {
  List<int> lista = [2,3,6,1,9];
  print(minMax(lista));
}
int triple (int x) => x*3;
void main(List<String> args) {
  int Function(int) multiplicar = (n) => n*3; 
  int Function(int) multiplicar2 = triple;
  print(multiplicar(3));
  print(multiplicar2(3));
}
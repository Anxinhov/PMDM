int aplicar(int x, int y, int Function(int,int) op) => op(x,y);
int sumar(int x, int y) => x + y;
int restar(int x, int y) => x - y;
void main(List<String> args) {
  int resultado = aplicar (4, 5, sumar);
  print("Resultado: $resultado");
  int resta = aplicar(4, 5,(int x, int y) => x - y);
  print("Resultado: $resta");
}
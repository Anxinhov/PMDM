({String nombre, int idade })crearUsuario(String x, int y){
  return(nombre: x, idade: y);
}
void main(List<String> args) {
  print(crearUsuario("Anxo", 19));
}
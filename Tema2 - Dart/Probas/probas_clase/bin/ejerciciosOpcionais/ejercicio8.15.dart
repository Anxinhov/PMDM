({double subtotal, double total , double ive})calcularFactura({required double precio, int unidades = 1 , double iva = 0.21,}){
  final subtotal = precio * unidades;
  final ive = subtotal * iva ;
  final total = subtotal + ive;
  return(subtotal: subtotal,total: total,ive: ive);
} 
void main(List<String> args) {
  print(calcularFactura(precio: 500));
}
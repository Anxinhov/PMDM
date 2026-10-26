
void main(List<String> args) {
  int? idade = null;
  print(idade == null ? "Sin edad" : idade.isEven ? "Es par" : "Es impar");
  final data = DateTime.now();
  print(data);
}
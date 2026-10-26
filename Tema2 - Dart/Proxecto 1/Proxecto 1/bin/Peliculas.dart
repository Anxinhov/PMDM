import 'dart:io';
void main(List<String> args) {
  crearMenu();
}

void crearMenu(){
  List<Map<String, dynamic>> peliculas = [];
  var n ;
  do{
  print("1. Cargar datos de exemplo: ");
  print("2. Engadir: ");
  print("3. Modificar: ");
  print("4. Eliminar: ");
  print("5. Listar: ");
  print("6. Buscar: ");
  print("7. Saír:");
  print("Dime que opcion quieres escribiendo su número: ");
  n = int.tryParse(stdin.readLineSync()?? '');
  if(n==null){
    print("El valor introducido no es un número por favor escriba un número");
  }else{
    SeleccionMenu(n,peliculas);
  }
  }while(n!=7);
}

void SeleccionMenu(int? n,List <Map<String, dynamic>> peliculas){
  switch(n){
    case 1:
      peliculas.add(CargarExemplo());
      break;
    case 2:
      peliculas.add(anhadirPelicula());
      break;
    case 3:
      modificarPelicula(peliculas);
      break;
    case 4:
      eliminarPelicula(peliculas);
      break;
    case 5:
      listarPeliculas(peliculas);
      break;
    case 6:
      buscarPelicula(peliculas);
      break;
    case 7:
      print("Saindo da aplicación");
      break;
    default:
      print("O número seleccionado non e valido volve a introducir outro");
      break;
  }
}

Map <String,dynamic> CargarExemplo (){
  return crearPelicula(Titulo: 'Indiana Jones y el arca perdida', Director: 'Steven Spielberg', Duracion: 115,Protagonista: 'Harrison Ford', Genero: 'Aventuras', Anho: 1981);
}

Map<String, dynamic> crearPelicula({
  required String Titulo,
  required String Director,
  required int  Duracion,
  String? Protagonista ,
  required String Genero,
  required int Anho
}) {
    return {
      'Titulo': Titulo,
      'Director': Director,
      'Duración': Duracion,
      'Protagonista' : Protagonista ?? "",
      'Genero' : Genero,
      'Año':Anho
    };
}

String validarTitulo(){
  while (true) {
    stdout.write('Dime el titulo (no más de 50 caracteres): ');
    String? titulo = stdin.readLineSync();
 
    if (titulo == null) {
      print('Tienes que escribir algo');
      continue; 
    }

    if (titulo.length >= 50){
      print("El titulo solo puede tener un maximo de 50 caracteres");
      continue;
    }
    return titulo;
  }
}

String validarDirector(){
  while (true) {
    stdout.write('Dime el director/a (no más de 30 caracteres): ');
    String? director = stdin.readLineSync();
 
    if (director == null) {
      print('Tienes que escribir algo');
      continue; 
    }

    if (!RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ]+$').hasMatch(director)){
        print("El nombre del director no puede llevar ni caracteres especiales ni números");
        continue;
    }

    if (director.length >= 30){
      print("El director solo puede tener un maximo de 30 caracteres");
      continue;
    }
    return director;
  }
}

int validarDuracion (){
  while (true) {
    stdout.write('"Dime la duración:" (enteiro de 90 a 240): ');
    String? texto = stdin.readLineSync();
 
    if (texto == null) {
      print('Tienes que escribir algo');
      continue; 
    }
 
    int? duracion = int.tryParse(texto.trim());
    if (duracion == null) {
      print('Tienes que escribir un número entero');
      continue; 
    }
 
    if (duracion < 90 || duracion > 240) {
      print('La duración debe estar entre 90 y 240');
      continue;
    }
 
    return duracion;
  }
}

String? validarProtagonista(){
  while (true) {
    stdout.write('Dime el protagonista(Opcional)(si lo escribes, no más de 30 caracteres):');
    String? protagonista = stdin.readLineSync();
 
    if (protagonista == null) {
      return null; 
    }

    if (!RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ]+$').hasMatch(protagonista)){
        print("El nombre del protagonista no puede llevar ni caracteres especiales ni números");
        continue;
    }

    if (protagonista.length >= 30){
      print("El titulo solo puede tener un maximo de 30 caracteres");
      continue;
    }
    return protagonista;
  }
}

String validarGenero(){
  while (true) {
    stdout.write('Dime el genero (no más de 20 caracteres):');
    String? genero = stdin.readLineSync();
 
    if (genero == null) {
      print('Tienes que escribir algo');
      continue; 
    }

    if (!RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ]+$').hasMatch(genero)){
        print("El nombre del protagonista no puede llevar ni caracteres especiales ni números");
        continue;
    }

    if (genero.length >= 30){
      print("El titulo solo puede tener un maximo de 30 caracteres");
      continue;
    }
    return genero;
  }
}

int validarAnho (){
  while (true) {
    stdout.write('"Dime el año:" (enteiro de 1900 a 2026): ');
    String? texto = stdin.readLineSync();
 
    if (texto == null) {
      print('Tienes que escribir algo');
      continue; 
    }
 
    int? anho = int.tryParse(texto.trim());
    if (anho == null) {
      print('Tienes que escribir un número entero');
      continue; 
    }
 
    if (anho < 1900 || anho > 2026) {
      print('La duración debe estar entre 1900 y 2026');
      continue;
    }
 
    return anho;
  }
}

Map<String, dynamic> anhadirPelicula(){
  String titulo = validarTitulo();
  String director = validarDirector();
  int duracion = validarDuracion();
  String? protagonista = validarProtagonista();
  String genero = validarGenero();
  int anho = validarAnho();
  if(protagonista == null){
    return crearPelicula(Titulo: titulo, Director: director, Duracion: duracion, Genero: genero, Anho: anho);
  }else{
    return crearPelicula(Titulo: titulo, Director: director, Duracion: duracion,Protagonista: protagonista, Genero: genero, Anho: anho);
  }
}

void modificarPelicula(List<Map<String, dynamic>> peliculas){
  print("Dime el titulo de la peli que deseas modificar:");
  String titulo = stdin.readLineSync() ?? "";
  for(var i = 0;i<peliculas.length;i++){
    if(titulo.toUpperCase() == peliculas[i]["Titulo"].toUpperCase()){
      print("Dime que elemento deseas modificar de la pelicula(si es año debes escribir anho):");
      String elemento = stdin.readLineSync() ?? "";
      switch(elemento.toLowerCase()){
        case "titulo":
          print("Cual desea que sea el nuevo titulo");
          String nuevo = stdin.readLineSync() ?? "";
          peliculas[i]["Titulo"] =nuevo;
          break;
        case "director" || "director/a":
          print("Cual desea que sea el nuevo director/a");
          String nuevo = stdin.readLineSync() ?? "";
          peliculas[i]["Director"] =nuevo;
          break;
        case "duracion" || "duración":
          print("Cual desea que sea la nueva duración");
          int nuevo = int.parse(stdin.readLineSync() ?? "");
          peliculas[i]["Duración"] =nuevo;
          break;
        case "protagonista":
          print("Cual desea que sea el nuevo protagonista");
          String nuevo = stdin.readLineSync() ?? "";
          peliculas[i]["Protagonista"] =nuevo;
          break;
        case "genero":
          print("Cual desea que sea el nuevo genero");
          String nuevo = stdin.readLineSync() ?? "";
          peliculas[i]["Genero"] =nuevo;
          break;
        case "anho":
          print("Cual desea que sea el nuevo titulo");
          int nuevo = int.parse(stdin.readLineSync() ?? "");
          peliculas[i]["Año"] =nuevo;
          break;
      }
    }
  }
}

void eliminarPelicula (List<Map<String, dynamic>> peliculas){
  print("Dime el titulo de la pelicula deseas eliminar:");
  String titulo = stdin.readLineSync() ?? "";
  for(var i = 0;i<peliculas.length;i++){
    if(titulo.toUpperCase() == peliculas[i]["Titulo"].toUpperCase()){
      peliculas.remove(peliculas[i]);
      print("Pelicula eliminada exitosamente");
    }
  }
}

void listarPeliculas (List<Map<String, dynamic>> peliculas){
  for(var i=0;i<peliculas.length;i++){
    if(peliculas[i]["Protagonista"]==""){
      print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
    }else{
      print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Protagonista: ${peliculas[i]["Protagonista"]}, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
    }
  }
}

void buscarPelicula (List<Map<String, dynamic>> peliculas){
  print("Dime por que elemento deseas buscar la pelicula(si es año debes escribir anho):");
      String elemento = stdin.readLineSync() ?? "";
      switch(elemento.toLowerCase()){
        case "titulo":
          print("Cual es el titulo de la pelicula");
          String buscador = stdin.readLineSync() ?? "";
          for(var i=0;i<peliculas.length;i++){
            if (buscador.toUpperCase() == peliculas[i]["Titulo"].toUpperCase()){
              if(peliculas[i]["Protagonista"]==""){
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }else{
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Protagonista: ${peliculas[i]["Protagonista"]}, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }
            }
          }
          break;
        case "director" || "director/a":
          print("Cual es el director/a de la pelicula");
          String buscador = stdin.readLineSync() ?? "";
          for(var i=0;i<peliculas.length;i++){
            if (buscador.toUpperCase() == peliculas[i]["Director"].toUpperCase()){
              if(peliculas[i]["Protagonista"]==""){
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }else{
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Protagonista: ${peliculas[i]["Protagonista"]}, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }
            }
          }
          break;
        case "duracion" || "duración":
          print("Cual es la duración de la pelicula");
          int buscador = int.parse(stdin.readLineSync() ?? "");
          for(var i=0;i<peliculas.length;i++){
            if (buscador == peliculas[i]["Duración"]){
              if(peliculas[i]["Protagonista"]==""){
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }else{
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Protagonista: ${peliculas[i]["Protagonista"]}, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }
            }
          }
          break;
        case "protagonista":
          print("Cual es el protagonista de la pelicula(si no tiene no escribas nada)");
          String buscador = stdin.readLineSync() ?? "";
          for(var i=0;i<peliculas.length;i++){
            if (buscador.toUpperCase() == peliculas[i]["Protagonista"].toUpperCase()){
              if(peliculas[i]["Protagonista"]==""){
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }else{
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Protagonista: ${peliculas[i]["Protagonista"]}, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }
            }
          }
          break;
        case "genero":
          print("Cual es el genero de la pelicula");
          String buscador = stdin.readLineSync() ?? "";
          for(var i=0;i<peliculas.length;i++){
            if (buscador.toUpperCase() == peliculas[i]["Genero"].toUpperCase()){
              if(peliculas[i]["Protagonista"]==""){
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }else{
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Protagonista: ${peliculas[i]["Protagonista"]}, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }
            }
          }
          break;
        case "anho":
          print("Cual es el año de la pelicula");
          int buscador = int.parse(stdin.readLineSync() ?? "");
          for(var i=0;i<peliculas.length;i++){
            if (buscador == peliculas[i]["Año"]){
              if(peliculas[i]["Protagonista"]==""){
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }else{
                print("titulo: ${peliculas[i]["Titulo"]}, Director/a: ${peliculas[i]["Director"]}, Duracion: ${peliculas[i]["Duración"]} minutos, Protagonista: ${peliculas[i]["Protagonista"]}, Genero: ${peliculas[i]["Genero"]}, Año: ${peliculas[i]["Año"]}");
              }
            }
          }
          break;
      }
}
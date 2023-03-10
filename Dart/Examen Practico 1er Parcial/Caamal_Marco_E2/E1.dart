void main(List<String> args) {
  List<double> notas = [7.3, 7.4, 9.6, 10, 6.3, 5.4, 8.6, 8.3, 9.2, 6.5];
  double media = 0;

  notas.forEach((element) {
    media += element;
  });
  media /= notas.length;
  print("La nota media del grupos es: $media");

  print("Las notas superiores a la media son los siguientes: ");
  notas.forEach((element) {
    if (element > media) {
      print(element);
    }
  });
}

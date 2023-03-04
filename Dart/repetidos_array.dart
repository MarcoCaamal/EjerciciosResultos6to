main() {
  var array = [1, 2, 3, 4, 5, 5, 5, 6, 6, 6, 6, 7, 7, 3, 1, 9];
  List<int> repetidos = [];
  List<int> unicos = [];
  var counter = 0;

  array.forEach((element) {
    array.forEach((element2) {
      if (repetidos.contains(element)) {
        return;
      }
      if (element == element2 && counter < 2) {
        counter++;
      }
      if (element == element2 && counter == 2 && !repetidos.contains(element)) {
        repetidos.add(element);
        counter = 0;
        return;
      }
    });
  });

  repetidos.forEach((element) {
    print(element);
  });
}

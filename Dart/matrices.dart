var matrizA = [
  [16, 5, 9, 4],
  [2, 11, 7, 14],
  [
    3,
    10,
    6,
    15,
  ],
  [13, 8, 12, 1]
];

var matrizDiagonales = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];

void main(List<String> args) {
  // matrizTraspuesta();
  calcularDiagonalesMatriz();
}

void matrizTraspuesta() {
  List<List<int>> nuevaMatriz = [[], [], [], []];
  for (var i = 0; i < matrizA.length; i++) {
    List<int> fila = [];
    List<int> columna = matrizA[i];
    for (var j = 0; j < matrizA.length; j++) {
      fila.add(matrizA[j][i]);
    }
    for (var k = 0; k < matrizA.length; k++) {
      nuevaMatriz[i].add(columna[k]);
    }
    nuevaMatriz[i] = fila;
  }

  nuevaMatriz.forEach((element) {
    element.forEach((element2) {
      print(element2);
    });
  });
}

void calcularDiagonalesMatriz() {
  // Diagonal positiva
  var suma = 0;
  List<List<int>> matrizCalculos = matrizDiagonales;
  var finalMatriz = matrizCalculos.length - 1;
  var nuevoFinalMatriz = finalMatriz + finalMatriz;
  var iterador = 0;
  for (var i = finalMatriz; i < nuevoFinalMatriz; i++) {
    matrizCalculos.add(matrizDiagonales[iterador]);
    iterador++;
  }

  matrizCalculos.forEach((element) {
    print(element);
  });

  iterador = 0;
  for (var i = 0; i < matrizCalculos.length - 2; i++) {
    
  }
}

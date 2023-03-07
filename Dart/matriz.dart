void main() {
  // calcularDiagonal();
  calcularDiagonalInversa();
}

/**
 * Marzo
 * 1-6 Teoria Kotlin
 * M-7 Teoria Dart
 * M-8 Prac Dart
 * j-9 Prac Kotlin
 */

var matriz = [
  [3, 9, 4, 6],
  [4, 15, 1, 3],
  [5, 3, 5, 9],
  [6, 2, 3, 12]
];

/**
 * Programa que calcula la suma de la diagonal de una matriz
 */
void calcularDiagonal() {
  var suma = 0;

  // Ojo se puede hacer con un solo ciclo for haciendo matriz[i][i]
  for (var i = 0; i < matriz.length; i++) {
    for (var j = 0; j < matriz.length; j++) {
      if (i == j) {
        suma += matriz[i][j];
      }
    }
  }

  print(suma);
}

/**
 * Programa que calcula la diagonal inversa de una diagonal
 */
void calcularDiagonalInversa() {
  var temp = matriz.length - 1;
  var suma = 0;
  for (var i = 0; i < matriz.length; i++) {
    suma += matriz[i][temp];
    temp--;
  }

  print(suma);
}

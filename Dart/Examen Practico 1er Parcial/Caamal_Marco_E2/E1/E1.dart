void main(List<String> args) {
  List<int> A = [1, 2, 3, 4, 5, 6,7,8];
  List<String> B = ["Uno", "Dos", "Tres", "Cuatro", "Cinco", "Seis", "Siete"];

  var resultado = concatenarArray(A, B);

  resultado.forEach((element) {
    print(element);
  });
}

List<String> concatenarArray(List<dynamic> A, List<dynamic> B) {
  List<String> resultado = [];

  if (A.length > B.length) {
    for (var i = 0; i < A.length; i++) {
      if (i < B.length) {
        resultado.add("${A[i]}${B[i]}");
        continue;
      }
      resultado.add("${A[i]}");
    }
  } else {
    for (var i = 0; i < B.length; i++) {
      if (i < A.length) {
        resultado.add("${A[i]}${B[i]}");
        continue;
      }
      resultado.add("${B[i]}");
    }
  }

  return resultado;
}

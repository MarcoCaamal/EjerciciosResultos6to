void main(List<String> args) {
  List<String> empleados = [
    "Marco",
    "Juan",
    "Pedro",
    "Alex",
    "Ricardo",
    "Miguel",
    "David"
  ];
  List<double> sueldos = [5000, 4000, 4500, 3000, 2500, 3000, 6000];
  int indiceSueldoMayor = 0;
  double sueldoMayor = 0;

  for (var i = 0; i < sueldos.length; i++) {
    if (sueldos[i] > sueldoMayor) {
      sueldoMayor = sueldos[i];
      indiceSueldoMayor = i;
    }
  }

  print("El empleado con mayor sueldo es: ${empleados[indiceSueldoMayor]} con la cantidad de sueldo de: ${sueldos[indiceSueldoMayor]}");
}

void main(List<String> args) {
  List<int> pares = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];
  List<int> primerosDiez = [];

  pares.forEach((element) {
    if ((element % 2) == 0 && primerosDiez.length < 10) {
      primerosDiez.add(element);
    }
  });

  primerosDiez.forEach((element) {
    print(element);
  });
}

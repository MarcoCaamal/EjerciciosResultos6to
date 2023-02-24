var _nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// Aqui es donde la aplicación comienza a ejecutarse
void main() {
  // var number = 42; // Declarar e inicializar una variable
  // printInteger(number); // Llama la funcion
  // valoresDefecto();

  // numeros();
  // lists();
  // conjuntos();
  // maps();
  runas();
}

/** UN PROGRAMA BASICO DE DART **/

// Define una función
printInteger(int aNumber) {
  print("The number is $aNumber.");
}

/** VARIABLES **/
void variables() {
  var name = "Bob";
  dynamic name2 = "Bob2";
  String name3 = "Bob3";
}

/** VALORES POR DEFECTO **/
void valoresDefecto() {
  int lineCount;
}

/** Final y const **/
void constantes() {
  final name = "Bob";

  const name2 = "Bob2";
}

/** NUMEROS **/
void numeros() {
  var x = 1;
  print("x is: $x");

  var hex = 0xDEADBEEF;
  print("hex is $hex");

  var y = 1.1;
  print("y is: $y");

  var exponents = 1.42e5;
  print("exponents is: $exponents");

  double z = 1;
  print("z is: $z");

  // Conversiones
  var one = int.parse("1");
  print("one == 1: ${one == 1}");

  var onePointOne = double.parse("1.1");
  print("onePointOne == 1.1: ${onePointOne == 1.1}");

  String oneAsString = 1.toString();
  print("oneAsString == '1': ${oneAsString == '1.1'}");

  String piAsString = 3.14159.toStringAsFixed(2);
  print("piAsString == '3.14': ${piAsString == '3.14'}");
}

/** Lists **/
void lists() {
  var list = [1, 2, 3];
  print("list.length == 3: ${list.length == 3}");
  print("list[1] == 2: ${list[1] == 2}");
  list[1] = 1;
  print("list[1] == 1: ${list[1] == 1}");

  var constantList = const [1, 2, 3];
}

/** CONJUNTOS **/
void conjuntos() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};
  // Set<String> name = {}

  var elements = <String>{};

  elements.add("fluorine");
  elements.addAll(halogens);

  print("elements.length == 5: ${elements.length == 5}");

  final constantSet = const {
    'flourine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine'
  };
}

/** MAPS **/
void maps() {
  var gifts = {
    // Key: Value
    'first': 'partridge', 'second': 'turtledoves', 'fifth': 'golden rings'
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // var gifts = Map();
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings';
  // var nobleGases = Map();
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';

  gifts['fourth'] = 'calling birds';

  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
}

/** Runas **/
void runas() {
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input =
      new Runes('\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596} \u{1f44d}');
  print(new String.fromCharCodes(input));
}

/** FUNCIONES **/
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}



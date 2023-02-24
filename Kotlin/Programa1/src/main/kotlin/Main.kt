import java.lang.Exception

fun main(args: Array<String>) {
    //programa1()
    //programa2()
    //programa3()
    //programa4()
    programa5()
}

/**
 * Programa que pide una array y crea otro array nuevo sin número repetidos
 * ejem [1,1,2,3,4,5,5,6,7] el resultado seria [1,2,3,4,5,6,7]
 */
fun programa5() {
    val vector: Array<Int> = pedirArray()
    var nuevoArray: Array<Int> = Array<Int>(0){0}

    for (elemento in vector) {
        if(!nuevoArray.contains(elemento)) {
            nuevoArray += elemento
        }
    }

    for (elemento in nuevoArray) {
        println(elemento)
    }
}

/**
 * Programa que reversiona un array
 */
fun programa4() {
    var vector: Array<Int> = arrayOf(1,3,4,5,6,7,8)
    var i = 0
    var j: Int = vector.size - 1

    while(i < j) {
        val temp = vector[i]

        vector[i] = vector[j]
        vector[j] = temp

        i++
        j--
    }

    for (i in vector.indices) {
        println(vector[i])
    }
}

/**
 * Programa que pide un array por consola y imprime el número mayor del array
 */
fun programa3() {
    val vector: Array<Int> = pedirArray()
    var numMayor: Int = 0

    for(i in vector.indices) {
        if(vector[i] > numMayor) {
            numMayor = vector[i]
        }
    }

    println("El número mayor del vector es: $numMayor")
}

/**
 * Programa que suma los array de forma opuesta
 * ejem: [1,2,3,4,5], [6,7,8,9,10] el resultado seria [1+10,2+9,3+8,4+7,5+6]
 */
fun programa2() {
    val a1 = arrayOf(4,6,3,-7,8,15)
    val a2 = arrayOf(3,15,7,9,4,1)

    if(a1.size != a2.size) {
        println("Los arrays debene contener las misma cantidad de valores");
        return
    }

    var a3: Array<Int> = Array<Int>(a1.size){ i -> 0 }

    for((posicion, valor) in a2.reversed().withIndex()) {
        a3[posicion] = valor + a1[posicion]
    }

    for(item in a3) {
        println(item)
    }
}


/**
 * Programa que suma dos arrays y guarda los resultados en un tecer array
 * Ejem [1,2,3,4,5], [6,7,8,9,10] el resultado seria[1+6,2+7,3+8,4+9,5+10]
 * */
fun programa1() {
    val a1 = arrayOf(4,6,3,-7,8,15)
    val a2 = arrayOf(3,15,7,9,4,1)

    if(a1.size != a2.size) {
        println("Los arrays debene contener las misma cantidad de valores");
        return
    }

    var a3: Array<Int> = Array<Int>(a1.size){ i -> 0 }

    for((posicion, valor) in a1.withIndex()) {
        a3[posicion] = valor + a2[posicion]
    }

    for(item in a3) {
        println(item)
    }
}

/**
 * Funciones que agrupan tareas repetitibas como pedir un array para llenar
 */

fun pedirArray(): Array<Int> {
    var arraySize: Int?
    var size: Int = 0
    var valorIsNull: Boolean = false

    do {
        print("Digite el tamaño del vector: ");
        arraySize = readlnOrNull()?.toIntOrNull()
        if(arraySize == null) {
            println("El valor introduccido debe ser un número, vuelva a intentarlo")
            valorIsNull = true
        }else {
            valorIsNull = false
            size = arraySize
        }
    }while (valorIsNull)

    val vector: Array<Int> = Array<Int>(size){i -> 0}

    for (i in vector.indices) {
        do {
            print("${i + 1}.- Ingrese un número: ")
            val valorIntroducido = readlnOrNull()?.toIntOrNull()

            if(valorIntroducido != null) {
                vector[i] = valorIntroducido
                valorIsNull = false
            }
            else {
                valorIsNull = true
                println("El valor ingresado no es número vuelva a intentarlo")
            }
        }while (valorIsNull)
    }

    return vector
}
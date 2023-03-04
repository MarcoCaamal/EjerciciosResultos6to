var matrizA = arrayOf(arrayOf(5,2,4), arrayOf(2,1,1), arrayOf(1,2,3))
var matrizB = arrayOf(arrayOf(1,0,2), arrayOf(4,3,1), arrayOf(2,0,3))
var matrizResultado = Array<Array<Int>>(3) { _ -> Array<Int>(3) { _ -> 0 } }
fun main(args: Array<String>) {
    var jMatrizA = 0
    var iMatrizB = 0
    var jMatrizB = 0

    for(iMatrizResultado in matrizResultado.indices) {
        for(jMatrizResultado in matrizResultado.indices) {
            var resultado = 0
            for(iMatrizA in matrizA.indices) {
                resultado += matrizA[iMatrizA][jMatrizA] * matrizB[iMatrizB][jMatrizB]
                jMatrizB++
            }
            jMatrizA++
            jMatrizB = 0
            if(jMatrizA > 2){
                jMatrizA = 0
            }
            /*if(iMatrizB == 2) {
                iMatrizB = 0
            }*/
            matrizResultado[iMatrizResultado][jMatrizResultado] = resultado
        }
        iMatrizB++
    }

    for(i in matrizResultado.indices) {
        for(j in matrizResultado.indices) {
            println(matrizResultado[i][j])
        }
    }
}


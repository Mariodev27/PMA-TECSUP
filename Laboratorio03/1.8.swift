//funciones con retorno
func esPar(numero:Int)->Bool{
    if numero%2==0{
        return true
    }else{
        return false
    }
}

func dividePalabras(palabra:String)->[Character]{
    var letras = [Character]()
    for letra in palabra{
        letras.append(letra)
    }
    return letras
}

func estoyBien(peso: Double, altura: Double) -> (Double, String){
    let imc = peso / (altura * altura)
    var mensaje = ""

    if(imc > 10.50 && imc < 25.00){
        mensaje = "todo bien"
    }else{
        mensaje = "acudir al medico"
    }
    let resultado = (imc, mensaje)
    return resultado
}

// Invocación de la función esPar
let numero = 27
let esNumeroPar = esPar(numero: numero)
print("¿Es \(numero) par? \(esNumeroPar ? "Sí" : "No")")

// Invocación de la función dividePalabras
let palabra = "developer"
let letras = dividePalabras(palabra: palabra)
print("La palabra '\(palabra)' se divide en letras: \(letras)")

// Invocación de la función estoyBien
let peso = 64.0
let altura = 1.70
let resultadoEstoyBien = estoyBien(peso: peso, altura: altura)

let imcFormateado = String(format: "%.2f", resultadoEstoyBien.0)

print("Tu IMC es \(imcFormateado). Estás \(resultadoEstoyBien.1).")

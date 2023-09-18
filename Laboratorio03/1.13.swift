func queHay(nombre: String) -> (Int, [Character]) {
  
    let nombreEnMinusculas = nombre.lowercased() 
// Convertir el nombre a minúsculas para una coincidencia insensible a mayúsculas
  
    let vocales: Set<Character> = ["a", "e", "i", "o", "u"] 
  
    var cantidadVocales = 0
    var vocalesEncontradas = [Character]()
    
    for letra in nombreEnMinusculas {
        if vocales.contains(letra) {
            cantidadVocales += 1
            vocalesEncontradas.append(letra)
        }
    }
    
    return (cantidadVocales, vocalesEncontradas)
}

let miNombre = "Mario" 
let resultado = queHay(nombre: miNombre)

print("En \(miNombre) hay \(resultado.0) vocales:")
print(resultado.1)

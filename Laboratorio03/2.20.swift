import Foundation
class OperacionesBasicas{
     var numero1:Int = 0
     var numero2:Int = 0

     func Sumar(){
         print("La suma de \(numero1) con \(numero2) es: \(numero1 + numero2)")
     }

    func Restar(){
         print("La resta de \(numero1) con \(numero2) es: \(numero1 - numero2)")
     }

     func Multiplicar(){
         print("El producto de de \(numero1) con \(numero2) es: \(numero1 * numero2)")
     }

     func Dividir()->String{
         var res:String = ""
         if numero1 == 0 || numero2 == 0 {
             res = String("¡¡No esta definido!!")
         }else{
             res = String(Double(numero1) / Double(numero2))
         }
         return res
     }
	  }

 class OperacionesAvanzadas: OperacionesBasicas{
     var numero:Int = 0
     var raiz:Int = 0
     var potencia:Int = 0

     func Potencia(numero: Int,potencia: Int){
         let res = pow(Double(numero), Double(potencia))
         print("El número \(numero) a la potencia de \(potencia) es: \(res)")
     }

     func Raiz(numero: Int, raiz: Int){
         let res = pow(Double(numero), (1/Double(raiz)))
         print("La raiz \(raiz) de \(numero) es: \(res)")
     }

     func Factorial()->String{
       var res:String = ""
       if numero == 0 || numero == 1{
         res = String("1.0")
     }else{
         res = String((1...numero).map(Double.init).reduce(1.0, *)) 
     }
       return res
    }

    func Sumatoria (numero: Int) {
         var res = 0
         res = (numero*(numero+1))/2
         print("La sumatoria de números consecutivos hasta el \(numero) es: \(res)")
     }
 }
   var operaciones = OperacionesBasicas()
   print("Operaciones básicas")
   print("--------------------")
   print("Ingresar el número 1")
   let entrada = readLine()!
   let numero1 = Int(entrada)!
   print("Ingresar el número 2")
   let entrada2 = readLine()!
   let numero2 = Int(entrada2)!
  operaciones.numero1 = numero1
  operaciones.numero2 = numero2
  operaciones.Sumar()
  operaciones.Restar()
  operaciones.Multiplicar()
  print("La division de \(numero1) con \(numero2) es: \(operaciones.Dividir())")

 var operaciones2 = OperacionesAvanzadas()
 print("\nOperaciones avanzadas")
 print("--------------------")
 print("Ingresar un número")
 let entrada3 = readLine()!
 let numero = Int(entrada3)!
 print("Ingresar la raiz")
 let entrada4 = readLine()!
 let raiz = Int(entrada4)!
 print("Ingresar la potencia")
 let entrada5 = readLine()!
 let potencia = Int(entrada5)!
 operaciones2.numero = numero
 operaciones2.raiz = raiz
 operaciones2.potencia = potencia
 operaciones2.Potencia(numero:numero, potencia:potencia)
 operaciones2.Raiz(numero:numero, raiz:raiz)
 print("El factorial de \(numero) es: \(operaciones2.Factorial())")
 operaciones2.Sumatoria(numero:numero)

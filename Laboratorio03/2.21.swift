struct Precios{
  private let ganancia = 0.2
  var precio = 0.0

  func precioParcial()->Double{
    let pagar = self.precio+(self.precio*self.ganancia)
    return pagar
  }
}
class Tienda{
  var ruc:String=""
  var nombre:String=""
  var ganancia = "30%"
}
class Producto{
  var codigo:String=""
  var nombre:String=""
  var precios = Precios()
}

class Cliente{
  var dni = 0
  var nombre : String
  var productos : [Producto]
  init(dni:Int,nombre:String, productos:[Producto]){
    self.dni = dni
    self.nombre = nombre
    self.productos = productos
  }

  func listaProductosComprados(){
    print("-----------------------------------")
    for producto in self.productos{
      let codigoProducto = producto.codigo
      let nombreProducto = producto.nombre
      let precioFinal = producto.precios.precioParcial()
      print("Codigo: \(codigoProducto)")
      print("Nombre Producto: \(nombreProducto)")
      print("Precio: \(precioFinal)")
    }
  }
  func listarPagarGeneral (){
    var totalSum = Double(0)

  
    print("...................................")
    for producto in self.productos{ 
    let precioFinal = producto.precios.precioParcial()
    let preciofinalahorasi = Double(precioFinal)
    totalSum = (totalSum + preciofinalahorasi)
  
}   
    print("TOTAL: \(totalSum)")
    print("---------------------")
  }
  }

//instancias
var productos = [Producto]()
var productos2 = [Producto]()
//producto 1
var producto1 = Producto()
var precio1 = Precios()
producto1.codigo = "4c3173"
producto1.nombre = "Aceite"
precio1.precio = 12
producto1.precios = precio1

//producto a lista
productos.append(producto1)

//producto 2
var producto2 = Producto()
var precio2 = Precios()
producto2.codigo = "47u2"
producto2.nombre = "Atun"
precio2.precio = 6.50
producto2.precios = precio2

//producto a lista
productos.append(producto2)

//producto 3
var producto3 = Producto()
var precio3 = Precios()
producto3.codigo = "45u54r"
producto3.nombre = "Azucar"
precio3.precio = 4.50
producto3.precios = precio3

//producto a lista
productos2.append(producto3)
//producto 4
var producto4 = Producto()
var precio4 = Precios()
producto4.codigo = "P4n3t0n"
producto4.nombre = "Paneton"
precio4.precio = 20.99
producto4.precios = precio4

//producto a lista
productos2.append(producto4)

//instancias
var tiendas = [Tienda]()
//producto 1
var tienda = Tienda()
tienda.ruc = "100446378823"
tienda.nombre = "Tienda Melissa"

//producto a lista
tiendas.append(tienda)


//instancia cliente
var cliente = Cliente(
  dni:123456789,
  nombre:"Ariana", 
  productos: productos)
var cliente2 = Cliente(
  dni:987654321,
  nombre:"Mario", 
  productos: productos2)

//lista de clientes
var clientes = [Cliente]()
clientes.append(cliente)
clientes.append(cliente2)

//lista de clientes
for 
cliente in clientes{
  for 
tienda in tiendas{
  print()
  print("</ >")
  print("BOLETA DE VENTA")
  print("-----------------------------------")
  print()
  print("RUC: \(tienda.ruc)")
  print("Nombre tienda: \(tienda.nombre)")
  print("Ganancia: \(tienda.ganancia)")
  print()
}

  print("-----------------------------------")
  print("DNI Cliente: \(cliente.dni)")
  print("Nombre Cliente: \(cliente.nombre)")
  cliente.listaProductosComprados()
  cliente.listarPagarGeneral()
  print()
}

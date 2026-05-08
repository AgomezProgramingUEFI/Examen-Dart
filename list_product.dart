// Ejercicio: Listar Productos
//Listar productos: Mostrar todos los productos con:
//● Número de índice
//● Nombre
//● Precio
//● Cantidad disponible

void listProducts(List<Map<String, dynamic>> products) {
  print("\n--- Lista de productos ---");

  if (products.isEmpty) {
    print("No hay productos disponibles.");
    return;
  }

  for (int i = 0; i < products.length; i++) {
    final product = products[i];
    print(
      "${i + 1}. Nombre: ${product['nombre']}, Precio: ${product['precio']}, Cantidad: ${product['cantidad']}",
    );
  }
}

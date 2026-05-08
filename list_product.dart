// Ejercicio: Listar Productos
//Listar productos: Mostrar todos los productos con:
//● Número de índice
//● Nombre
//● Precio
//● Cantidad disponible

void listProducts(List<Map<String, dynamic>> products) {
  if (products.isEmpty) {
    print('\nNo hay productos para mostrar.');
    return;
  }

  print('\n=== Lista de Productos ===');
  for (int i = 0; i < products.length; i++) {
    final product = products[i];
    print(
      '${i + 1}. ${product['name']} - Precio: \$${product['price']} - Cantidad: ${product['quantity']}',
    );
  }
}

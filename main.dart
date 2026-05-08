import 'dart:io';
import 'add_product.dart';

void main() {
  List<Map<String, dynamic>> products = [];

  while (true) {
    print("\n--- Menú ---");
    print("1. Agregar producto");
    print("2. Ver productos");
    print("3. Salir");
    stdout.write("Seleccione una opción: ");

    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        addProducto(products);
        break;
      case '2':
        print("\n--- Productos ---");
        for (var product in products) {
          print("Nombre: ${product['nombre']}, Precio: ${product['precio']}, Cantidad: ${product['cantidad']}");
        }
        break;
      case '3':
        print("Saliendo...");
        return;
      default:
        print("Opción inválida.");
    }
  }
}
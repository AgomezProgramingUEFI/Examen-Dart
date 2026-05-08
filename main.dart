import 'dart:io';
import 'dart:convert';
import 'add_product.dart';
import 'update_product.dart'; 

void main() {
  stdout.encoding = utf8;

  final products = <Map<String, dynamic>>[];
  bool running = true;

  while (running) {
    print('\n=== Gestión de productos ===');
    print('1. Agregar producto');
    print('2. Listar productos (pendiente)');
    print('3. Actualizar producto'); // <--- Ya no dice "pendiente"
    print('4. Eliminar producto (pendiente)');
    print('5. Salir');

    stdout.write('Seleccione una opción: ');
    String? choice = stdin.readLineSync(encoding: utf8);

    switch (choice) {
      case '1':
        addProduct(products);
        break;

      case '2':
        print('\nFuncionalidad de listar productos aún no implementada.');
        break;

      case '3':
        updateProduct(products);
        break;

      case '4':
        print('\nFuncionalidad de eliminar producto aún no implementada.');
        break;

      case '5':
        running = false;
        print('\nSaliendo...');
        break;

      default:
        print('\nOpción inválida.');
    }
  }
}
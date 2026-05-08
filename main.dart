import 'dart:io';
import 'dart:convert';
import 'add_product.dart';
import 'delete.dart';


void main() {
  stdout.encoding = utf8;

  final products = <Map<String, dynamic>>[];
  bool running = true;

  while (running) {
    print('\n=== Gestión de productos ===');
    print('1. Agregar producto');
    print('2. Listar productos (pendiente)');
    print('3. Actualizar producto (pendiente)');
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
        print('\nFuncionalidad de actualizar producto aún no implementada.');
        break;

      case '4':
        deleteProduct(products);
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

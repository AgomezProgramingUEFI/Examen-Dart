import 'dart:io';

void deleteProduct(List<Map<String, dynamic>> products) {
  bool running = true;

  while (running) {
    print('\n===== MENÚ =====');
    print('1. Ver productos');
    print('2. Eliminar producto');
    print('3. Salir');

    print('Seleccione una opción: ');
    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        if (products.isEmpty) {
          print('No hay productos registrados.');
        } else {
          for (int i = 0; i < products.length; i++) {
            print(
              '${i + 1}. ${products[i]['nombre']} - \$${products[i]['precio']}',
            );
          }
        }
        break;

      case 2:
        if (products.isEmpty) {
          print('No hay productos');
          break;
        }

        for (int i = 0; i < products.length; i++) {
          print('${i + 1}. ${products[i]['nombre']}');
        }

        print('Ingrese el número del producto a eliminar: ');
        int index = int.parse(stdin.readLineSync()!) - 1;

        if (index >= 0 && index < products.length) {
          String deletedProduct = products[index]['nombre'];

          products.removeAt(index);

          print('Producto "$deletedProduct" eliminado correctamente.');
        } else {
          print('Número inválido.');
        }
        break;

      case 3:
        print('Saliendo del programa...');
        running = false;
        break;

      default:
        print('Opción inválida.');
    }
  }
}
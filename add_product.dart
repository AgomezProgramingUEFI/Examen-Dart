
import 'dart:io';
import 'dart:convert';

void addProduct(List<Map<String, dynamic>> products) {
  print("\n--- Agregar producto ---");
  print(" Ingrese nombre del producto:");

  String nameProduct = readNonEmptyString("Nombre del producto: ");
  print("nombre del producto: $nameProduct");

  print("Ingrese precio del producto: ");
  double priceProduct = readValidPrice("Precio del producto: ");

  print("precio del producto: $priceProduct");
  print("Ingrese cantidad del producto: ");

  int quantityProduct = readValidQuantity("Cantidad del producto: ");
  print("cantidad del producto: $quantityProduct");

  products.add({
    'nombre': nameProduct,
    'precio': priceProduct,
    'cantidad': quantityProduct,
  });

  print("\nProducto agregado correctamente.");
  
}

String readNonEmptyString(String message) {
  while (true) {
    stdout.write(message);

    String? input = stdin.readLineSync(encoding: utf8);

    if (input != null && input.trim().isNotEmpty) {
      return input.trim();
    }

    print('El campo no puede estar vacío.');
  }
}

double readValidPrice(String message) {
  while (true) {
    stdout.write(message);

    String? input = stdin.readLineSync(encoding: utf8);

    if (input == null || input.trim().isEmpty) {
      print('Debes ingresar un precio.');
      continue;
    }

    double? price = double.tryParse(input);

    if (price == null) {
      print('Debes ingresar un número válido para el precio.');
      continue;
    }

    if (price < 0) {
      print('El precio no puede ser negativo.');
      continue;
    }

    return price;
  }
}

int readValidQuantity(String message) {
  while (true) {
    stdout.write(message);

    String? input = stdin.readLineSync(encoding: utf8);

    if (input == null || input.trim().isEmpty) {
      print('Debes ingresar una cantidad.');
      continue;
    }

    int? quantity = int.tryParse(input);

    if (quantity == null) {
      print('Debes ingresar un número válido para la cantidad.');
      continue;
    }

    if (quantity < 0) {
      print('La cantidad no puede ser negativa.');
      continue;
    }

    return quantity;
  }
}
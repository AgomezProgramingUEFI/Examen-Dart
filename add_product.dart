Voy a revisar el contenido actual de add_product.dart antes de generar el código completo.

Read [](file:///c%3A/Users/gomez/OneDrive/Documents/Examen%20Dart/add_product.dart)

Aquí tienes el archivo completo y funcional para add_product.dart:

```dart
import 'dart:io';
import 'dart:convert';

void addProduct(List<Map<String, dynamic>> products) {
  print('\n--- Agregar producto ---');

  String title = readNonEmptyString('Nombre del producto: ');
  double price = readValidPrice('Precio del producto: ');
  int quantity = readValidQuantity('Cantidad disponible: ');

  products.add({
    'nombre': title,
    'precio': price,
    'cantidad': quantity,
  });

  print('\nProducto agregado correctamente.');
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

    double? price = double.tryParse(input.replaceAll(',', '.'));
    if (price == null) {
      print('Debes ingresar un número válido.');
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
      print('Debes ingresar un número.');
      continue;
    }

    if (quantity < 0) {
      print('La cantidad no puede ser negativa.');
      continue;
    }

    return quantity;
  }
}
```

Puedes copiarlo y pegarlo donde necesites.

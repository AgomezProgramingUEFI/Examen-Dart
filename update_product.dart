import 'dart:io';
import 'dart:convert';

void updateProduct(List<Map<String, dynamic>> products) {
  print('\n--- Actualizar Producto ---');

  if (products.isEmpty) {
    print('No hay productos registrados.');
    return;
  }

  
  for (int i = 0; i < products.length; i++) {
    print('${i + 1}. ${products[i]['nombre']}');
  }


  stdout.write('Ingrese el número del producto a actualizar: ');
  String? input = stdin.readLineSync(encoding: utf8);
  int? index = int.tryParse(input ?? '');

 
  if (index == null || index < 1 || index > products.length) {
    print('❌ Error: Índice inválido o fuera de rango.');
    return;
  }

  // Ajustamos el índice (usuario ve 1, lista es 0)
  int realIndex = index - 1;
  var product = products[realIndex];

  print('\nEditando: ${product['nombre']}');
  print('(Presiona Enter sin escribir nada para mantener el valor actual)');


  stdout.write('Nuevo nombre [Actual: ${product['nombre']}]: ');
  String? newName = stdin.readLineSync(encoding: utf8);
  
  
  if (newName != null && newName.trim().isNotEmpty) {
    product['nombre'] = newName.trim();
  }

  
  stdout.write('Nuevo precio [Actual: ${product['precio']}]: ');
  String? priceInput = stdin.readLineSync(encoding: utf8);

  if (priceInput != null && priceInput.trim().isNotEmpty) {
    double? newPrice = double.tryParse(priceInput);
    if (newPrice != null) {
      product['precio'] = newPrice;
    } else {
      print('⚠️ Precio inválido, se mantiene el valor anterior.');
    }
  }


  stdout.write('Nueva cantidad [Actual: ${product['cantidad']}]: ');
  String? qtyInput = stdin.readLineSync(encoding: utf8);

  if (qtyInput != null && qtyInput.trim().isNotEmpty) {
    int? newQty = int.tryParse(qtyInput);
    if (newQty != null) {
      product['cantidad'] = newQty;
    } else {
      print(' Cantidad inválida, se mantiene el valor anterior.');
    }
  }

  print('\n Producto actualizado correctamente.');
}
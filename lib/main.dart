import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventario/src/pages/mod_producto_page.dart';
import 'package:inventario/src/pages/producto_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Inventario',
      initialRoute: '/producto',
      getPages: [
        GetPage(name: '/producto', page: () => ProductoPage()),
        GetPage(name: '/modProducto', page: () => ModProductoPage())
      ],
    );
  }
}

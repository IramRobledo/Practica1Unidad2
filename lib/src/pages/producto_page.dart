import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventario/src/controllers/tatuaje_controller.dart';
import 'package:inventario/src/models/tatuaje.dart';
import 'package:inventario/src/pages/mod_producto_page.dart';

class ProductoPage extends StatelessWidget {
  const ProductoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productoCtrl = Get.put(TatuajeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Tatuajes'),
      ),
      body: Obx(() => productoCtrl.existeTatuaje.value
          ? InformacionProducto(
              producto: productoCtrl.producto.value,
            )
          : NoProducto()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(Icons.flutter_dash),
        onPressed: () {
          Get.to(ModProductoPage());
        },
      ),
    );
  }
}

class NoProducto extends StatelessWidget {
  const NoProducto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('No he tatuado nada'),
    );
  }
}

class InformacionProducto extends StatelessWidget {
  final Tatuaje producto;
  const InformacionProducto({Key? key, required this.producto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Text('General'),
          Divider(),
          ListTile(
            title: Text('El precio del tatuaje: ${this.producto.precio}'),
          ),
          Divider(),
          ListTile(
            title:
                Text('La figura que se va a tatuar: ${this.producto.figura}'),
          ),
          Divider(),
          ListTile(
            title: Text('Color del tatuaje:' +
                (this.producto.color == 1 ? 'Negro' : 'Color')),
          ),
          Divider(),
        ],
      ),
    );
  }
}

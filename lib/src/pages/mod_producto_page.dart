import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventario/src/controllers/tatuaje_controller.dart';
import 'package:inventario/src/models/tatuaje.dart';

class ModProductoPage extends StatelessWidget {
  const ModProductoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productoCtrl = Get.find<TatuajeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Modificar Tatauje'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blueGrey,
              child: Text('Agregar Tatuaje'),
              onPressed: () {
                productoCtrl.cargarProducto(
                    Tatuaje(precio: 1000, figura: 'Dragon', color: 1));
              },
            ),
            MaterialButton(
              color: Colors.blueGrey,
              child: Text('Modificar Precio'),
              onPressed: () {
                productoCtrl.cambiarPrecio(800);
              },
            ),
            MaterialButton(
              color: Colors.blueGrey,
              child: Text('Modificar Figura'),
              onPressed: () {
                productoCtrl.cambiarFigura('Perrona');
              },
            ),
            // MaterialButton(
            //   color: Colors.blueGrey,
            //   child: Text('Agregar Categoria'),
            //   onPressed: () {
            //     productoCtrl.agregarCategoria(
            //         'Categoria #${productoCtrl.producto.value.categorias.length}');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

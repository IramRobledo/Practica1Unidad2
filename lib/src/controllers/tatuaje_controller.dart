import 'package:get/get.dart';
import 'package:inventario/src/models/tatuaje.dart';

class TatuajeController extends GetxController {
  //Observables le dice al widget cuando se redibuje
  var existeTatuaje = false.obs;
  var producto = Tatuaje().obs;

  void cargarProducto(Tatuaje tTatuaje) {
    //Cargamos el producto
    this.producto.value = tTatuaje;
    //Cambiamos el valor de la propiedad
    this.existeTatuaje.value = true;
  }

  void cambiarPrecio(int tPrecio) {
    this.producto.update((val) {
      val!.precio = tPrecio;
    });
  }

  void cambiarFigura(String tFigura) {
    this.producto.update((val) {
      val!.figura = tFigura;
    });
  }
}

import 'package:get/get.dart';

import '../models/cliente.dart';

class ClienteController extends GetxController {
  Rx<List<Cliente>> listaGral = Rx<List<Cliente>>([]);
  final cantidad = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    listaGral.value = listaClientes;
    super.onInit();
  }

  List<Cliente> get listaPublica => listaGral.value;
  int get total => cantidad.value;

  counter() {
    cantidad.value++;
  }
}

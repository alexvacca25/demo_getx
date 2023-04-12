import 'package:get/get.dart';

import '../models/cliente.dart';

class ClienteController extends GetxController {
  Rx<List<Cliente>> listaGral = Rx<List<Cliente>>([]);
  Rx<List<Cliente>> selCliente = Rx<List<Cliente>>([]);
  final cantidad = 0.obs;
  final itemlista = 99999.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    listaGral.value = listaClientes;
    super.onInit();
  }

  List<Cliente> get listaPublica => listaGral.value;
  List<Cliente> get selClienteFinal => selCliente.value;
  int get total => cantidad.value;
  int get itemSel => itemlista.value;

  counter() {
    cantidad.value++;
  }

  seleccionCliente(int i) {
    print(i);
    if (selCliente.value.isEmpty) {
      selCliente.value.add(listaGral.value[i]);
    } else {
      selCliente.value[0] = listaGral.value[i];
    }
    itemlista.value = i;
    selCliente.refresh();
    print(selCliente.value[0].nombre);
    print(selCliente.value.length);
  }
}

import 'package:demo_getx/domain/controller/gestionCliente.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cliente extends StatelessWidget {
  const Cliente({super.key});

  @override
  Widget build(BuildContext context) {
    ClienteController clientec = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
        actions: [
          Obx(() => (clientec.selClienteFinal.isEmpty)
              ? IconButton(
                  onPressed: () {
                    Get.snackbar(
                      'Clientes', // Título del SnackBar
                      'Por Favor Seleccionar un Cliente', // Mensaje del SnackBar
                      duration:
                          const Duration(seconds: 3), // Duración del SnackBar
                      snackPosition:
                          SnackPosition.BOTTOM, // Posición del SnackBar
                      backgroundColor:
                          Colors.red, // Color de fondo del SnackBar
                      colorText: Colors.white, // Color del texto del SnackBar
                    );
                  },
                  icon: const Icon(Icons.person))
              : IconButton(
                  onPressed: () {
                    Get.toNamed("/articulo");
                  },
                  icon: const Icon(Icons.arrow_circle_right_outlined))),
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: clientec.listaPublica.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                color: (clientec.listaPublica[index].estado)
                    ? Colors.blue
                    : Colors.grey,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.05,
                      backgroundImage: NetworkImage(
                          clientec.listaPublica[index].foto,
                          scale: 1),
                    ),
                    Text(
                        "${clientec.listaPublica[index].nombre} ${clientec.listaPublica[index].apellido} "),
                    Text("Edad: ${clientec.listaPublica[index].edad}"),
                    Text(
                        "Estado: ${(clientec.listaPublica[index].estado) ? 'Activo' : 'Inactivo'}"),
                    OutlinedButton(
                        onPressed: () {
                          clientec.seleccionCliente(index);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Seleccionar",
                              style: TextStyle(color: Colors.white),
                            ),
                            Obx(
                              () => (clientec.itemSel == index)
                                  ? const Icon(Icons.check_box)
                                  : const Text(""),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}

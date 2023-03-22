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
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: clientec.listaPublica.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 50,
                height: 40,
                color: Colors.blue,
                child: Text(clientec.listaPublica[index].nombre),
              ),
            );
          }),
    );
  }
}

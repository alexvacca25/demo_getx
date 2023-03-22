import 'package:demo_getx/domain/controller/gestionCliente.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListaArticulo extends StatelessWidget {
  const ListaArticulo({super.key});

  @override
  Widget build(BuildContext context) {
    //ClienteController clientec = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Articulos"),
        ),
        body: const Text('data', ));

    /* GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                child: Text("$index"),
              );
            }));*/
  }
}

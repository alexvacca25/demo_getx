import 'package:demo_getx/ui/carrito/cliente.dart';
import 'package:demo_getx/ui/carrito/factura.dart';
import 'package:demo_getx/ui/carrito/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Getx',
      theme: ThemeData(primarySwatch: Colors.amber, primaryColor: Colors.blue),
      home: const Cliente(),
      routes: {
        "/cliente": (context) => const Cliente(),
        "/articulo": (context) => const ListaArticulo(),
        "/factura": (context) => const Factura(),
      },
    );
  }
}

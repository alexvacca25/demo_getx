import 'package:demo_getx/domain/controller/gestionCliente.dart';
import 'package:demo_getx/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ClienteController());
  runApp(const App());
}

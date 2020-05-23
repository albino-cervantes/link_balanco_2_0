import 'package:flutter/material.dart';
import 'package:linkbalanco2/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/padroes/hive_helper.dart';

void main() async {
  HiveHelper();
  runApp(ModularApp(module: AppModule()));
}

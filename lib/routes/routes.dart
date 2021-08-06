import 'package:flutter/material.dart';
import 'package:monitoreo/pages/Login.page.dart';
import 'package:monitoreo/pages/Registrar.page.dart';

final Map<String,Widget Function(BuildContext)> appRoutes = {
  'login': (_ ) => LoginPage(),
  'registrar': (_ ) => RegistrarPage(),
};
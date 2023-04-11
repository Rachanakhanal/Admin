import 'package:flutter/material.dart';
import 'package:get/get.dart' show GetMaterialApp;
import 'package:hospital_admin/views/pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

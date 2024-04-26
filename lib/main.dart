import 'package:alquila_tu_hobby/core/utils/initial_bindings/initial_bindings.dart';
import 'package:alquila_tu_hobby/presentations/dashboard/screens/dashboard_screen.dart';

import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: 'alquila tu hobby',
      initialRoute: AppRoutes.login,
      defaultTransition: Transition.native,
      getPages: AppRoutes.pages,
      initialBinding: InitialBindings(),
    );
  }
}

import 'package:alquila_tu_hobby/core/utils/initial_bindings/initial_bindings.dart';
import 'package:alquila_tu_hobby/presentations/dashboard/screens/dashboard_screen.dart';

import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCu_VV87fbOp7npID2G7dLilynF_iFVwZQ",
            appId: "1:37650537274:web:52a12ff005367e2eb58e03",
            messagingSenderId: "37650537274",
            projectId: "rental-app-afe66"));
  }
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

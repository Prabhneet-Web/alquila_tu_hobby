import 'package:alquila_tu_hobby/presentations/login/screens/login_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {

  static const String login =
      '/login';

  static List<GetPage> pages = [
    GetPage(
      name: login,
      page: () => Login(),
      bindings: [],
    ),

  ];
}
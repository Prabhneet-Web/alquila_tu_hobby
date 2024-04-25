import 'package:alquila_tu_hobby/presentations/create_new_account/bindings/create_new_account_controller_bindings.dart';
import 'package:alquila_tu_hobby/presentations/create_new_account/screens/create_new_account.dart';
import 'package:alquila_tu_hobby/presentations/login/bindings/login_controller_bindings.dart';
import 'package:alquila_tu_hobby/presentations/login/screens/login_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {

  static const String login = '/login';
  static const String createNewAccount = '/createNewAccount';

  static List<GetPage> pages = [
    GetPage(
      name: login,
      page: () => Login(),
      bindings: [LoginControllerBinding()],
    ),
    GetPage(
      name: createNewAccount,
      page: () => CreateNewAccount(),
      bindings: [CreateNewAccountControllerBinding()],
    ),

  ];
}
import 'package:alquila_tu_hobby/presentations/Massage/cahtBinding.dart';
import 'package:alquila_tu_hobby/presentations/Massage/chatScreenn.dart';
import 'package:alquila_tu_hobby/presentations/admin/adminBinding.dart';
import 'package:alquila_tu_hobby/presentations/admin/adminScreen.dart';
import 'package:alquila_tu_hobby/presentations/create_new_account/bindings/create_new_account_controller_bindings.dart';
import 'package:alquila_tu_hobby/presentations/create_new_account/screens/create_new_account.dart';
import 'package:alquila_tu_hobby/presentations/dashboard/dashboardscreen.dart';
import 'package:alquila_tu_hobby/presentations/login/bindings/login_controller_bindings.dart';
import 'package:alquila_tu_hobby/presentations/login/screens/login_screen.dart';
import 'package:alquila_tu_hobby/presentations/product/productScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String login = '/login';
  static const String createNewAccount = '/createNewAccount';
  static const String dashboard = '/dashboard';
  static const String product = '/product';
  static const String adminDashboard = '/adminDashboard';
  static const String chatscreen = '/chatscreen';

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
    GetPage(
      name: dashboard,
      page: () => dashBoardscreen(),
      //bindings: [CreateNewAccountControllerBinding()],
    ),
    GetPage(
      name: product,
      page: () => productScreen(),
      //bindings: [CreateNewAccountControllerBinding()],
    ),
    GetPage(
      name: adminDashboard,
      page: () => adminScreen(),
      bindings: [adminBinding()],
    ),
    GetPage(
      name: adminDashboard,
      page: () => chatScreen(),
      bindings: [cahtBinding()],
    ),
  ];
}

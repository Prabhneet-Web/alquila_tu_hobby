import 'package:alquila_tu_hobby/presentations/add_product/addProductScreen.dart';
import 'package:alquila_tu_hobby/presentations/admin/adminBinding.dart';
import 'package:alquila_tu_hobby/presentations/admin/adminScreen.dart';
import 'package:alquila_tu_hobby/presentations/create_new_account/bindings/create_new_account_controller_bindings.dart';
import 'package:alquila_tu_hobby/presentations/create_new_account/screens/create_new_account.dart';
import 'package:alquila_tu_hobby/presentations/dashboard/bindings/dashboard_controller_bindings.dart';
import 'package:alquila_tu_hobby/presentations/dashboard/screens/dashboard_screen.dart';
import 'package:alquila_tu_hobby/presentations/favourite/favProductScreen.dart';
import 'package:alquila_tu_hobby/presentations/login/bindings/login_controller_bindings.dart';
import 'package:alquila_tu_hobby/presentations/login/screens/login_screen.dart';
import 'package:alquila_tu_hobby/presentations/message/bindings/chat_bindings.dart';
import 'package:alquila_tu_hobby/presentations/message/screens/chat_screen.dart';
import 'package:alquila_tu_hobby/presentations/product/binding/product_screen_controller_binding.dart';
import 'package:alquila_tu_hobby/presentations/product/screens/productScreen.dart';
import 'package:alquila_tu_hobby/presentations/profile/profile_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String login = '/login';
  static const String createNewAccount = '/createNewAccount';
  static const String dashboard = '/dashboard';
  static const String favourite = '/favourite';
  static const String cart = '/cart';
  static const String product = '/product';
  static const String adminDashboard = '/adminDashboard';
  static const String chat = '/chatScreen';
  static const String profile = '/profile';
  static const String addProduct = '/addProduct';


  static List<GetPage> pages = [
    GetPage(
      name: login,
      page: () => const Login(),
      bindings: [LoginControllerBinding()],
    ),
    GetPage(
      name: createNewAccount,
      page: () => const CreateNewAccount(),
      bindings: [CreateNewAccountControllerBinding()],
    ),
    GetPage(
      name: profile,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: dashboard,
      page: () => const DashBoardScreen(),
      bindings: [DashboardControllerBindings()]
    ),
    GetPage(
      name: favourite,
      page: () => const favProductScreen(),
    ),
    GetPage(
      name: cart,
      page: () => const favProductScreen(),
    ),
    GetPage(
      name: addProduct,
      page: () => const addProductScreen(),
    ),
    GetPage(
      name: product,
      page: () => const ProductsScreen(),
      bindings: [
        ProductScreenControllerBindings()
      ]
    ),
    GetPage(
      name: adminDashboard,
      page: () => adminScreen(),
      bindings: [adminBinding()],
    ),
    GetPage(
      name: chat,
      page: () => const ChatScreen(),
      bindings: [ChatControllerBinding()],
    ),
  ];
}

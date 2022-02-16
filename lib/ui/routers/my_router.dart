import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../ui/screens/home_screen.dart';
import '../../ui/screens/splash_screen.dart';

class MyRouter {
  static var homeScreen = "/homeScreen";
  static var route = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: MyRouter.homeScreen, page: () => const HomeScreen()),
  ];
}

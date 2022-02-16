import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;
import 'package:get/get.dart';
import 'controller/binding_controller.dart';
import 'ui/routers/my_router.dart';
import 'ui/styles/locale_string.dart';

void main() {
  BindingController().dependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    services.SystemChrome.setPreferredOrientations([
      services.DeviceOrientation.portraitUp,
      services.DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'GreenTickAssignment',
      getPages: MyRouter.route,
    );
  }
}

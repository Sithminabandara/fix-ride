import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:vehicle_app/controllers/theme_controller.dart';
import 'package:vehicle_app/screens/add_vehicle.dart';
import 'package:vehicle_app/screens/book_now.dart';
import 'package:vehicle_app/screens/home_screen.dart';
import 'package:vehicle_app/screens/login_screnn.dart';
import 'package:vehicle_app/screens/menue_screen.dart';
import 'package:vehicle_app/screens/products_screen.dart';
import 'package:vehicle_app/screens/schedule_screen.dart';
import 'package:vehicle_app/screens/service_screen.dart';
import 'package:vehicle_app/screens/signup_screen.dart';
import 'package:vehicle_app/screens/splash_screen.dart';
import 'package:vehicle_app/screens/welcome_screen.dart';
import 'package:vehicle_app/theme/theme.dart';
import 'package:vehicle_app/widgets/navbar_roots.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        title: 'My App',
        debugShowCheckedModeBanner: false,
        theme: lightMode,
        darkTheme: darkMode,
        themeMode: themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
        home: NavbarRoots(),
      );
    });
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:vehicle_app/controllers/theme_controller.dart';
import 'package:vehicle_app/screens/location_screen.dart';
import 'package:vehicle_app/screens/login_screnn.dart';
import 'package:vehicle_app/screens/profile_detail_page.dart';
import 'package:vehicle_app/screens/qr_scanner.dart';
import 'package:vehicle_app/widgets/navbar_roots.dart';
// import 'theme_controller.dart'; // Make sure this path is correct

class MenueScreen extends StatefulWidget {
  @override
  State<MenueScreen> createState() => _MenueScreenState();
}

class _MenueScreenState extends State<MenueScreen> {
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavbarRoots()),
                      );
                    },
                    child: Text(
                      'Fix Ride',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/person.jpeg'),
                    ),
                    title: Text(
                      "Sithmina Bandara",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "Profile",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Divider(height: 50),
                   Obx(() {
                    return SwitchListTile(
                      title: Text(
                        'Dark Mode',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      secondary: Icon(
                        themeController.isDarkMode.value
                            ? Icons.dark_mode
                            : Icons.light_mode,
                        size: 35,
                        color: Color.fromARGB(255, 2, 137, 234),
                      ),
                      value: themeController.isDarkMode.value,
                      onChanged: (value) {
                        themeController.toggleTheme();
                      },
                    );
                  }),
                  SizedBox(height: 20),
                  buildMenuItem(
                    icon: CupertinoIcons.person,
                    text: "Scan Me",
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(
                               builder: (context) => QrScanner()
                          ));
                    },
                  ),
                  SizedBox(height: 20),
                  buildMenuItem(
                    icon: Icons.notifications_none_outlined,
                    text: "Notifications",
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  buildMenuItem(
                    icon: Icons.privacy_tip_outlined,
                    text: "Location",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                               builder: (context) => const LocationPage()
                          ));
                    },
                  ),
                  SizedBox(height: 20),
                  buildMenuItem(
                    icon: Icons.settings_suggest_outlined,
                    text: "General",
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  buildMenuItem(
                    icon: Icons.info_outline_rounded,
                    text: "About Us",
                    onTap: () {},
                  ),
                  Divider(height: 40),
                  buildMenuItem(
                    icon: Icons.logout,
                    text: "Log Out",
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(
                               builder: (context) => LoginScrenn()
                          ));
                    },
                  ),
                  SizedBox(height: 20)                
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildMenuItem({required IconData icon, required String text, required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 2, 137, 234),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.black,
          size: 35,
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}

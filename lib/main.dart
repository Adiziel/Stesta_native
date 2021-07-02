import 'package:flutter/material.dart';
import 'package:stesta_native/pages/home_page.dart';
import 'package:stesta_native/pages/login_page.dart';
import 'package:stesta_native/pages/register_page.dart';
import 'package:stesta_native/pages/welcome_page.dart';
import 'package:stesta_native/utils/routes.dart';
import 'package:stesta_native/widget/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.welcomeRoute: (context) => WelcomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.registerRoute: (context) => RegisterPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}

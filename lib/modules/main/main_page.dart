import 'package:flutter/material.dart';
import 'package:mars_tourism/modules/intro_page/intro_page.dart';
import 'package:mars_tourism/modules/login/login_page.dart';
import 'package:mars_tourism/modules/menu/menu_page.dart';
import 'package:mars_tourism/theme/theme_constansts.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: LoginPage(),
    );
  }
}

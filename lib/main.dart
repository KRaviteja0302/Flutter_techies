import 'package:flutter/material.dart';

import 'modules/login_screen_module/login_screen.dart';
import 'utility/size_constants.dart';

void main() {
  runApp(const MyScreens());
}

class MyScreens extends StatefulWidget {
  const MyScreens({super.key});

  @override
  State<MyScreens> createState() => _MyScreensState();
}

class _MyScreensState extends State<MyScreens> {
  @override
  Widget build(BuildContext context) {
    SizeConstants(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

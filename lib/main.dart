import 'package:flutter/material.dart';
import 'package:nuox_project/my_home_page.dart';
import 'authentication/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
          )),
      debugShowCheckedModeBanner: false,
      home: LoginWidget(),
    );
  }
}

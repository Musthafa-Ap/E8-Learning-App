import 'package:flutter/material.dart';
import 'package:nuox_project/my_home_page.dart';
import 'package:nuox_project/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'authentication/login.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: MyApp()));
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
      home: LoginPage(),
    );
  }
}

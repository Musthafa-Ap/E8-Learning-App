import 'package:flutter/material.dart';
import 'package:nuox_project/authentication/login.dart';
import 'package:nuox_project/my_home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountPageButton extends StatelessWidget {
  final buttontitle;
  const AccountPageButton({required this.buttontitle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Color.fromARGB(255, 51, 50, 50)),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(0, 40, 39, 39))),
        onPressed: () async {
          final sharedPrefs = await SharedPreferences.getInstance();
          sharedPrefs.clear();
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
              (route) => false);
        },
        child: Text(
          buttontitle,
          style: const TextStyle(
            color: Colors.purple,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:nuox_project/authentication/login.dart';

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
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginPage()));
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

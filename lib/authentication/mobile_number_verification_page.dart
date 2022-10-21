import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nuox_project/authentication/otp_verification_page.dart';
import 'package:nuox_project/constants/constants.dart';
import 'package:nuox_project/widgets/oulined_text_field_widget.dart';

class MobileNumberverificationPage extends StatelessWidget {
  const MobileNumberverificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Mobile number verification"),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        children: [
          SizedBox(
            height: size * .4,
          ),
          OutlinedTextFieldWidget(hintText: "Mobile number"),
          SizedBox(
            height: size * .1,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15)),
                  backgroundColor: const MaterialStatePropertyAll(
                    Colors.purple,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OTPVerificationPage()));
              },
              child: const Text(
                "Submit",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}

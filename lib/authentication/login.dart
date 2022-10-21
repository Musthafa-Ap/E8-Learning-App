import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:nuox_project/authentication/forgot.dart';
import 'package:nuox_project/authentication/signup.dart';
import '../constants/constants.dart';
import '../my_home_page.dart';
import 'mobile_number_verification_page.dart';

class LoginWidget extends StatelessWidget {
  final _globalKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Form(
            key: _globalKey,
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                //  const CircleAvatar(
                // backgroundColor: Colors.black,
                // radius: 150,
                // backgroundImage: NetworkImage(
                //     "https://www.timeshighereducation.com/sites/default/files/styles/the_breaking_news_image_style/public/istock-1213470247_0.jpg?itok=VZUWOAHL")),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Email"),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? "Enter a valid mail"
                          : null,
                ),
                KHeight,
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password"),
                ),
                const SizedBox(
                  height: 25,
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
                      onLoginButtonPressed(context);
                    },
                    child: const Text(
                      "Log in",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: GestureDetector(
                    child: const Text(
                      "Forgot password ?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                    },
                  ),
                ),
/////////////
                KHeight20,
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.white,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("OR",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ))
                  ],
                ),
                KHeight20,
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Log in with Google",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.white))),
                  ),
                ),
                KHeight20,
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.white,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("OR",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ))
                  ],
                ),
                KHeight20,
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MobileNumberverificationPage()));
                    },
                    child: const Text(
                      "Log in with Mobile number",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.white))),
                  ),
                ),
                KHeight15,
                KHeight20,
                //////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "No account?",
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    KWidth5,
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpWidget()));
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  void onLoginButtonPressed(context) {
    final _email = _emailController.text;
    final _password = _passwordController.text;
    if (_email.isNotEmpty && _password.isNotEmpty) {
      if (_email == _password) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MyHomePage()));
      }
    } else {
      return;
    }
  }
}

// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:animate_do/animate_do.dart';
import 'package:brand_kiln_app/Firebase/firebase_auth.dart';
import 'package:brand_kiln_app/Screens/sign_in_screen.dart';
import 'package:brand_kiln_app/constant/show_alert_dilog.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: SignUpScreen()));

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    height: 400,
                    width: width + 20,
                    child: FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                              'assets/img/background_img.png',
                            ),
                            fit: BoxFit.fill,
                          )),
                        )),
                  ),
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: Color.fromRGBO(49, 39, 79, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1700),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(196, 135, 198, .3)),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(196, 135, 198, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromRGBO(
                                                196, 135, 198, .3)))),
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: emailController,
                                  obscureText: false,
                                  validator: (value) {
                                    return value!.contains(RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                                        ? null
                                        : "Enter a valid email";
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade700)),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value != null && value.isEmpty) {
                                      return 'Password is required please enter';
                                    }
                                    // you can check password length and specifications
                                    if (value!.length < 8) {
                                      return "Password must be atleast 8 characters long";
                                    }
                                    return null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade700)),
                                ),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    isLoading
                        ? FadeInUp(
                            duration: const Duration(milliseconds: 1900),
                            child: MaterialButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  await FirebaseAuthFunc().registerMethod(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      context: context);

                                  setState(() {
                                    isLoading = true;
                                  });
                                } else {
                                  showAlertDilog(context, "ERROR");
                                }
                              },
                              color: const Color.fromRGBO(49, 39, 79, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              height: 50,
                              child: const Center(
                                child: Text(
                                  "Create account",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ))
                        : const Center(
                            child: CircularProgressIndicator(
                              color: Color.fromRGBO(49, 39, 79, .6),
                            ),
                          ),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1900),
                        child: Center(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInScreen()),
                                  );
                                },
                                child: const Text('Already have account ?')))),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

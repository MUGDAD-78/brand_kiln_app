// ignore_for_file: prefer_const_constructors

import 'package:brand_kiln_app/Screens/home_screen.dart';
import 'package:brand_kiln_app/Screens/sign_up_screen.dart';
import 'package:brand_kiln_app/constant/show_alert_dilog.dart';
import 'package:brand_kiln_app/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.black,
            ));
          } else if (snapshot.hasError) {
            return showAlertDilog(context, "Something went wrong");
          } else if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return SignUpScreen();
          }
        },
      ),
    );
  }
}

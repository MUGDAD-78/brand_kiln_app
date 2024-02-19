// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDyTk3C92zTRnsjMrEQWQ6M1DG-izvJGZQ',
    appId: '1:523576086394:web:0e6316f3254b2fbb6090c3',
    messagingSenderId: '523576086394',
    projectId: 'brand-kiln-app',
    authDomain: 'brand-kiln-app.firebaseapp.com',
    storageBucket: 'brand-kiln-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2SL8kBns8OEYEOLFXPEibQEUXalgWHxw',
    appId: '1:523576086394:android:7aaf1892caeaebf06090c3',
    messagingSenderId: '523576086394',
    projectId: 'brand-kiln-app',
    storageBucket: 'brand-kiln-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCP0D65sxav3Mr5e0Gkl4GBWLnJj3Jt9GM',
    appId: '1:523576086394:ios:e7b1f65e1660af226090c3',
    messagingSenderId: '523576086394',
    projectId: 'brand-kiln-app',
    storageBucket: 'brand-kiln-app.appspot.com',
    iosBundleId: 'com.example.brandKilnApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCP0D65sxav3Mr5e0Gkl4GBWLnJj3Jt9GM',
    appId: '1:523576086394:ios:8b6387bf41d76be96090c3',
    messagingSenderId: '523576086394',
    projectId: 'brand-kiln-app',
    storageBucket: 'brand-kiln-app.appspot.com',
    iosBundleId: 'com.example.brandKilnApp.RunnerTests',
  );
}

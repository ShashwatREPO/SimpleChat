// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCjWoEpfm7q3udVuiCfjDiqGjlPEYTh8Y8',
    appId: '1:634980459791:web:4971d6ab5598c210244a7a',
    messagingSenderId: '634980459791',
    projectId: 'simplechat-fcef4',
    authDomain: 'simplechat-fcef4.firebaseapp.com',
    storageBucket: 'simplechat-fcef4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmCNyOhp5Xh-nelmCKX35PlEA_bcPRsVQ',
    appId: '1:634980459791:android:8d26c48fb145a8fe244a7a',
    messagingSenderId: '634980459791',
    projectId: 'simplechat-fcef4',
    storageBucket: 'simplechat-fcef4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCDXZuafehMNz8Muk9C0Gwq0nqlGVDCv3U',
    appId: '1:634980459791:ios:735a1621d68250b8244a7a',
    messagingSenderId: '634980459791',
    projectId: 'simplechat-fcef4',
    storageBucket: 'simplechat-fcef4.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCDXZuafehMNz8Muk9C0Gwq0nqlGVDCv3U',
    appId: '1:634980459791:ios:735a1621d68250b8244a7a',
    messagingSenderId: '634980459791',
    projectId: 'simplechat-fcef4',
    storageBucket: 'simplechat-fcef4.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCjWoEpfm7q3udVuiCfjDiqGjlPEYTh8Y8',
    appId: '1:634980459791:web:3ed489865e0b3e06244a7a',
    messagingSenderId: '634980459791',
    projectId: 'simplechat-fcef4',
    authDomain: 'simplechat-fcef4.firebaseapp.com',
    storageBucket: 'simplechat-fcef4.appspot.com',
  );
}

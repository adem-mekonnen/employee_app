// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart2
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
    apiKey: 'AIzaSyChpX-Vjih7uK2Q6wdnAv2qrtiSYLqoj4U',
    appId: '1:8771813382:web:b97db8d51d622bedc30387',
    messagingSenderId: '8771813382',
    projectId: 'employee-dd81f',
    authDomain: 'employee-dd81f.firebaseapp.com',
    storageBucket: 'employee-dd81f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhRp4gYzIauJ723KakL4ykOg_-26hFA94',
    appId: '1:8771813382:android:514c6b95cc2881d5c30387',
    messagingSenderId: '8771813382',
    projectId: 'employee-dd81f',
    storageBucket: 'employee-dd81f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB53KETQ87nADE8WYjKd2gaoIzxbL-nUjg',
    appId: '1:8771813382:ios:416372086f439e88c30387',
    messagingSenderId: '8771813382',
    projectId: 'employee-dd81f',
    storageBucket: 'employee-dd81f.appspot.com',
    iosBundleId: 'com.example.employeeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB53KETQ87nADE8WYjKd2gaoIzxbL-nUjg',
    appId: '1:8771813382:ios:416372086f439e88c30387',
    messagingSenderId: '8771813382',
    projectId: 'employee-dd81f',
    storageBucket: 'employee-dd81f.appspot.com',
    iosBundleId: 'com.example.employeeApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyChpX-Vjih7uK2Q6wdnAv2qrtiSYLqoj4U',
    appId: '1:8771813382:web:f0f0c829b40f15ecc30387',
    messagingSenderId: '8771813382',
    projectId: 'employee-dd81f',
    authDomain: 'employee-dd81f.firebaseapp.com',
    storageBucket: 'employee-dd81f.appspot.com',
  );

}
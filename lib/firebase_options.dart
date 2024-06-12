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
    apiKey: 'AIzaSyC_TAYXtJdDqFPCr49oMuuOPQ0M12t9s50',
    appId: '1:1076051199790:web:1642a4141b978511a3dcbf',
    messagingSenderId: '1076051199790',
    projectId: 'employee-1116e',
    authDomain: 'employee-1116e.firebaseapp.com',
    storageBucket: 'employee-1116e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARoVmqFOOZXzeKjBJJz75KGb-OYGiyPVY',
    appId: '1:1076051199790:android:6deda2cf108c6e13a3dcbf',
    messagingSenderId: '1076051199790',
    projectId: 'employee-1116e',
    storageBucket: 'employee-1116e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDG5K4YcIl8V_7EZ-cS2kSEorffe9onun4',
    appId: '1:1076051199790:ios:666e0adf40b766eca3dcbf',
    messagingSenderId: '1076051199790',
    projectId: 'employee-1116e',
    storageBucket: 'employee-1116e.appspot.com',
    iosBundleId: 'com.example.employeeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDG5K4YcIl8V_7EZ-cS2kSEorffe9onun4',
    appId: '1:1076051199790:ios:666e0adf40b766eca3dcbf',
    messagingSenderId: '1076051199790',
    projectId: 'employee-1116e',
    storageBucket: 'employee-1116e.appspot.com',
    iosBundleId: 'com.example.employeeApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC_TAYXtJdDqFPCr49oMuuOPQ0M12t9s50',
    appId: '1:1076051199790:web:d4b0a56fcaaf2b9aa3dcbf',
    messagingSenderId: '1076051199790',
    projectId: 'employee-1116e',
    authDomain: 'employee-1116e.firebaseapp.com',
    storageBucket: 'employee-1116e.appspot.com',
  );

}
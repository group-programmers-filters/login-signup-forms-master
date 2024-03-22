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
    apiKey: 'AIzaSyAc5tCI_wswvZsorNEs_vE601tBDvULMIU',
    appId: '1:14111855123:web:6b073d40b1e908a812e5e6',
    messagingSenderId: '14111855123',
    projectId: 'xfc-jgftf',
    authDomain: 'xfc-jgftf.firebaseapp.com',
    storageBucket: 'xfc-jgftf.appspot.com',
    measurementId: 'G-PQPW9RN8SE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3pkAC1M3TQqtqFsNtFV16bm4pWh7jgck',
    appId: '1:14111855123:android:79114515645bdc3c12e5e6',
    messagingSenderId: '14111855123',
    projectId: 'xfc-jgftf',
    storageBucket: 'xfc-jgftf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDa24AxsCuncxuFdMjhtLuEr7dGc2tTc5g',
    appId: '1:14111855123:ios:533c3f9af1bb6f5312e5e6',
    messagingSenderId: '14111855123',
    projectId: 'xfc-jgftf',
    storageBucket: 'xfc-jgftf.appspot.com',
    iosBundleId: 'com.example.loginSignup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDa24AxsCuncxuFdMjhtLuEr7dGc2tTc5g',
    appId: '1:14111855123:ios:92c1cea65e4d942a12e5e6',
    messagingSenderId: '14111855123',
    projectId: 'xfc-jgftf',
    storageBucket: 'xfc-jgftf.appspot.com',
    iosBundleId: 'com.example.loginSignup.RunnerTests',
  );
}
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
    apiKey: 'AIzaSyAdo4zoknyJ1-pJbjSda8D6opvqkKUPhS0',
    appId: '1:794797216580:web:8b8dd05e39e875ea7fbd11',
    messagingSenderId: '794797216580',
    projectId: 'phone-b31cd',
    authDomain: 'phone-b31cd.firebaseapp.com',
    storageBucket: 'phone-b31cd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMPyV2E734fHb4htSAclHtXM_GIP3DmhM',
    appId: '1:794797216580:android:178fba41f77930bb7fbd11',
    messagingSenderId: '794797216580',
    projectId: 'phone-b31cd',
    storageBucket: 'phone-b31cd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKyYQRtg7H-SwlJfndYuj6M1Vi-HWhZJI',
    appId: '1:794797216580:ios:c1d160967cff34ca7fbd11',
    messagingSenderId: '794797216580',
    projectId: 'phone-b31cd',
    storageBucket: 'phone-b31cd.appspot.com',
    iosClientId: '794797216580-6qsv0hdc6ih04fa1lvqgei392p43q7mi.apps.googleusercontent.com',
    iosBundleId: 'com.example.phoneauth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKyYQRtg7H-SwlJfndYuj6M1Vi-HWhZJI',
    appId: '1:794797216580:ios:c1d160967cff34ca7fbd11',
    messagingSenderId: '794797216580',
    projectId: 'phone-b31cd',
    storageBucket: 'phone-b31cd.appspot.com',
    iosClientId: '794797216580-6qsv0hdc6ih04fa1lvqgei392p43q7mi.apps.googleusercontent.com',
    iosBundleId: 'com.example.phoneauth',
  );
}
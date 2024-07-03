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
    apiKey: 'AIzaSyAs-bwY3DJSO4xf8ZcoMc3Dv0ooKov5oSE',
    appId: '1:460916455980:web:9392f7347a3bb8b6b66f89',
    messagingSenderId: '460916455980',
    projectId: 'chat-app-c6d1f',
    authDomain: 'chat-app-c6d1f.firebaseapp.com',
    storageBucket: 'chat-app-c6d1f.appspot.com',
    measurementId: 'G-0VE22TX1GV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_U8cjN9lVk2Yo-Or_Fu2NJPTmrjgzOjE',
    appId: '1:460916455980:android:14ff2a4d2e6a7d26b66f89',
    messagingSenderId: '460916455980',
    projectId: 'chat-app-c6d1f',
    storageBucket: 'chat-app-c6d1f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6RdeUqJoqRko6cwhuJmO8Q0yrwy43RIc',
    appId: '1:460916455980:ios:50eb46e4ce2cedc3b66f89',
    messagingSenderId: '460916455980',
    projectId: 'chat-app-c6d1f',
    storageBucket: 'chat-app-c6d1f.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6RdeUqJoqRko6cwhuJmO8Q0yrwy43RIc',
    appId: '1:460916455980:ios:50eb46e4ce2cedc3b66f89',
    messagingSenderId: '460916455980',
    projectId: 'chat-app-c6d1f',
    storageBucket: 'chat-app-c6d1f.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAs-bwY3DJSO4xf8ZcoMc3Dv0ooKov5oSE',
    appId: '1:460916455980:web:ffe4f2f1b971a90db66f89',
    messagingSenderId: '460916455980',
    projectId: 'chat-app-c6d1f',
    authDomain: 'chat-app-c6d1f.firebaseapp.com',
    storageBucket: 'chat-app-c6d1f.appspot.com',
    measurementId: 'G-Z85TND78V1',
  );
}

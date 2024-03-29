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
    apiKey: 'AIzaSyDiAqzRZ2PUNkGo2RaIHqUZtIAC_O9FhKA',
    appId: '1:505939534758:web:99f3391e27e5ae6e65e567',
    messagingSenderId: '505939534758',
    projectId: 'whatsapp-clone-0105',
    authDomain: 'whatsapp-clone-0105.firebaseapp.com',
    storageBucket: 'whatsapp-clone-0105.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDt4pgj-sB22-qCGY6gdoEKexRteIs249Y',
    appId: '1:505939534758:android:961906dc9aa5e5bf65e567',
    messagingSenderId: '505939534758',
    projectId: 'whatsapp-clone-0105',
    storageBucket: 'whatsapp-clone-0105.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBajKi1F6sHX9sq4jYtODHQbycoZcE3N6A',
    appId: '1:505939534758:ios:670de75eb44ce77f65e567',
    messagingSenderId: '505939534758',
    projectId: 'whatsapp-clone-0105',
    storageBucket: 'whatsapp-clone-0105.appspot.com',
    iosBundleId: 'com.example.whatsappClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBajKi1F6sHX9sq4jYtODHQbycoZcE3N6A',
    appId: '1:505939534758:ios:956475346d3cd78565e567',
    messagingSenderId: '505939534758',
    projectId: 'whatsapp-clone-0105',
    storageBucket: 'whatsapp-clone-0105.appspot.com',
    iosBundleId: 'com.example.whatsappClone.RunnerTests',
  );
}

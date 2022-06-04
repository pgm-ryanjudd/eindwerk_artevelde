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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDck14uRSoyS-GIaxvO-2-IofHZyf4g3ss',
    appId: '1:793542773597:web:8773fb49b19324dfc576b4',
    messagingSenderId: '793542773597',
    projectId: 'eindwerk-artevelde',
    authDomain: 'eindwerk-artevelde.firebaseapp.com',
    storageBucket: 'eindwerk-artevelde.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCE6Nf9pxInXGssnKRy5W0OFfEq3HXaCog',
    appId: '1:793542773597:android:04e9fc318e5e68b6c576b4',
    messagingSenderId: '793542773597',
    projectId: 'eindwerk-artevelde',
    storageBucket: 'eindwerk-artevelde.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPnaRaeMfPymaNuGGQUHOgP2NQPoLz5r4',
    appId: '1:793542773597:ios:d161f3922779f166c576b4',
    messagingSenderId: '793542773597',
    projectId: 'eindwerk-artevelde',
    storageBucket: 'eindwerk-artevelde.appspot.com',
    iosClientId: '793542773597-n8sgeemb9f6ovgg3c5cc1ndpce1su30t.apps.googleusercontent.com',
    iosBundleId: 'com.example.eindwerkLite',
  );
}

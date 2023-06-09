import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDTxYpNOBblgZdHLVVQey2NwW0vwA3aqMw',
    appId: '1:957531038343:web:446b06ce1c2eebc9b50e22',
    messagingSenderId: '957531038343',
    projectId: 'nutriplato-blog',
    authDomain: 'nutriplato-blog.firebaseapp.com',
    databaseURL: 'https://nutriplato-blog-default-rtdb.firebaseio.com',
    storageBucket: 'nutriplato-blog.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgcikPO-DQCtZfYgG7DQXzgDQ6QfKvQ1g',
    appId: '1:957531038343:android:3529dc88c1db678cb50e22',
    messagingSenderId: '957531038343',
    projectId: 'nutriplato-blog',
    databaseURL: 'https://nutriplato-blog-default-rtdb.firebaseio.com',
    storageBucket: 'nutriplato-blog.appspot.com',
  );
}

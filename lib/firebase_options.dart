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
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD3sjMfueQxEo3FiDPuAOvtzr8EL6kKZFw',
    appId: '1:817702378828:web:14f805306fe23c41c703e9',
    messagingSenderId: '817702378828',
    projectId: 'shopping-app-7a1e9',
    authDomain: 'shopping-app-7a1e9.firebaseapp.com',
    storageBucket: 'shopping-app-7a1e9.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIdX-GY0u6rc6k7e8ND1_lQcPqyIbSmFQ',
    appId: '1:817702378828:android:805375a950ad8bacc703e9',
    messagingSenderId: '817702378828',
    projectId: 'shopping-app-7a1e9',
    storageBucket: 'shopping-app-7a1e9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'YOUR-IOS-API-KEY',
    appId: 'YOUR-IOS-APP-ID',
    messagingSenderId: 'YOUR-SENDER-ID',
    projectId: 'YOUR-PROJECT-ID',
    storageBucket: 'YOUR-STORAGE-BUCKET',
    iosClientId: 'YOUR-IOS-CLIENT-ID',
    iosBundleId: 'YOUR-IOS-BUNDLE-ID',
  );
}

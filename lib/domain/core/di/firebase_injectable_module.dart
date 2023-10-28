import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:executives/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  @preResolve
  Future<FirebaseServeice> get firebaseServeice => FirebaseServeice.init();

  // @preResolve
  // Future<NotificationServeice> get notificationServeice =>
  //     NotificationServeice.init();

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  // @lazySingleton
  // FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
}

class FirebaseServeice {
  static Future<FirebaseServeice> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    return FirebaseServeice();
  }
}

// class NotificationServeice {
//   static Future<NotificationServeice> init() async {
//     final notification = AppNotification(locater<FirebaseMessaging>());
//     await notification.requestPermission();
//     await notification.initInfo();
//     return NotificationServeice();
//   }
// }
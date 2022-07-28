import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AwesomeNotifications().initialize(
      'resource://drawable/notification_icon',
      [            // notification icon
        NotificationChannel(
          channelGroupKey: 'basic_test',
          channelKey: 'basic',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          channelShowBadge: true,
          importance: NotificationImportance.High,
        ),
        //add more notification type with different configuration

      ]
  );

  //click listiner on local notification
  AwesomeNotifications().actionStream.listen((ReceivedNotification receivedNotification){
    print(receivedNotification.payload!['title']);
    //output from local notification click.
  });

  await Firebase.initializeApp(); //initilization of Firebase app
  FirebaseMessaging.instance.subscribeToTopic("all"); //subscribe firebase message on topic

  FirebaseMessaging.onBackgroundMessage(firebaseBackgroundMessage);
  //background message listiner

  runApp(hola());

}

// Declared as global, outside of any class
Future<void> firebaseBackgroundMessage(RemoteMessage message) async {
  AwesomeNotifications().createNotification(
      content: NotificationContent( //with image from URL
          id: 1,
          channelKey: 'basic', //channel configuration key
          title: message.data["title"],
          body: message.data["body"],
          bigPicture: message.data["image"],
          notificationLayout: NotificationLayout.BigPicture,
          payload: {"name":"flutter"}
      )
  );
}

class hola extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    FirebaseMessaging.onMessage.listen(firebaseBackgroundMessage);
    //active app listiner.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
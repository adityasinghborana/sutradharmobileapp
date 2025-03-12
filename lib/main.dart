import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sutradharmobileapp/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyA-Rs9ARfQBKgYYHCDYpzh_jpUoCkOv5Wg",
        projectId: "sutradharmobileapp",
        storageBucket: "sutradharmobileapp.appspot.com",
        messagingSenderId: "835709904513",
        appId: "1:835709904513:android:3b5df42a722722a24c8f80",
        trackingId: "447288668"),
  );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  Get.put(prefs);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          AppRoutes.splashScreen, // Set splash screen as the initialroute
      getPages: AppRoutes.routes,
    );
  }
}

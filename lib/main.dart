import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/view/on_boarding/on_boarding_view.dart';
import 'package:fitness/view/on_boarding/started_view.dart';
import 'package:fitness/view/home/gallery_view.dart';
import 'package:flutter/material.dart';
import 'package:fitness/firebase_options.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform); // Run firebase inside app
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness 3 in 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          /* colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, */
          primaryColor: TColor.primaryColor1,
          fontFamily: "Poppins",
          // primaryTextTheme: 
          // bodycolor
          
        ),
          // accentColor: Colors.white,
          
      home: const galleryView(),
    );
  }
}

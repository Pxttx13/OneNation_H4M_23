import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:one_nation/Desktop/home_dekstop.dart';
import 'package:one_nation/Sevices/service_home.dart';
import 'package:one_nation/Widgets/app_bar.dart';
import 'package:one_nation/Widgets/donate.dart';

import 'Mobile/home_mobile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAEI2yVJF_ooXaYl7ya8vbAA2K8ze3nEPI",
        authDomain: "futter-web1.firebaseapp.com",
        projectId: "futter-web1",
        storageBucket: "futter-web1.appspot.com",
        messagingSenderId: "362107198579",
        appId: "1:362107198579:web:396647095eeb29fe971e06",
        measurementId: "G-RF675MY553"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Raleway'),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: screenSize.width < 800
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              //backgroundColor: Colors.white.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              title: const Text(
                'Author',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3,
                ),
              ))
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: const DesktopAppbar()),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return const Mobile();
        } else {
          return const Desktop();
        }
      }),
    );
  }
}

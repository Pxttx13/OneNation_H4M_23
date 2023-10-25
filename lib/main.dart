import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:one_nation/Desktop/home_dekstop.dart';
import 'package:one_nation/Mobile/appbar_mobile.dart';

import 'package:one_nation/Widgets/app_bar.dart';

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
        appId: "1:362107198579:web:ff406ae3dd1fd37d971e06",
        measurementId: "G-2CJQX9X3CJ"),
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
  static var gradientStartColor = Colors.grey[300];

  static var gradientEndColor = Colors.grey[500];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // drawerScrimColor: Colors.amber,

      backgroundColor: Colors.grey[350],
      drawer: Drawer(
        child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.centerRight,
                  begin: Alignment.topLeft,
                  colors: [
                    // Colors.cyan,
                    // Color.fromARGB(255, 24, 226, 226),
                    // Colors.cyan
                    gradientEndColor!,
                    gradientStartColor!,
                    gradientEndColor!,
                  ]),
            ),
            child: const AppBarMobile()),
      ),
      appBar: screenSize.width < 800
          ? PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 70),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: AppBar(
                    scrolledUnderElevation: 10,
                    iconTheme: IconThemeData(color: Colors.black),
                    foregroundColor: Colors.grey,
                    backgroundColor: Colors.transparent,
                    // backgroundColor: Colors.grey[300],
                    //iconTheme: const IconThemeData(color: Colors.grey),
                    //backgroundColor: Colors.white.withOpacity(_opacity),
                    elevation: 0,
                    centerTitle: true,
                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(colors: [
                          // Color.fromARGB(255, 15, 192, 215),
                          // Colors.cyan,
                          // Color.fromARGB(255, 15, 192, 215),
                          Colors.grey.withOpacity(0.8),
                          Colors.grey[350]!,
                          Colors.grey.withOpacity(0.8),
                        ]),
                      ),
                    ),
                    title: const Text(
                      'ONE NATION',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    )),
              ),
            )
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

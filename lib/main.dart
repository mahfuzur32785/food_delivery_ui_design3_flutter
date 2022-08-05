import 'package:animated_container/screen/custom_btmNavbar/custom_btm_nav.dart';
import 'package:animated_container/screen/homepage.dart';
import 'package:animated_container/screen/intro_splash_page/introduction_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomButtomNavBar(),
    );
  }
}


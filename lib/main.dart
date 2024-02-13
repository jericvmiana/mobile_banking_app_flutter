import 'package:flutter/material.dart';
import 'package:mobile_banking_app_flutter/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

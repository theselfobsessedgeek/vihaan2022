import 'package:flutter/material.dart';

import 'screens/homepageWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vihaan #5.0',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primaryColor: const Color(0xffe3e5fe),
        backgroundColor: Colors.white,
      ),
      home: VihaanHomepageWidget(),
    );
  }
}

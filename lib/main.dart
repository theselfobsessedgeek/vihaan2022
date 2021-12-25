import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vihaan2022/constants.dart';

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
        focusColor: const Color(0xff2069d6),
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.quicksandTextTheme(Theme.of(context).textTheme)
            .copyWith(
                headline4: GoogleFonts.montserrat(
          textStyle: Theme.of(context).textTheme.headline4,
          color: const Color(0xff2069d6),
          fontWeight: FontWeight.bold,
        )),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            padding: EdgeInsets.all(kSmallButtonPadding),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kButtonRoundnessConstant)),
          ),
        ),
      ),
      home: VihaanHomepageWidget(),
    );
  }
}

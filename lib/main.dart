import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nrtflix',
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
          primarySwatch: Colors.blue,
          backgroundColor: bg,
          scaffoldBackgroundColor: bg,
          textTheme: const TextTheme(
              bodyText1: TextStyle(
                color: Colors.white,
              ),
              bodyText2: TextStyle(
                color: Colors.white,
              ))),
      debugShowCheckedModeBanner: false,
      home: ScreenMainPage(),
    );
  }
}

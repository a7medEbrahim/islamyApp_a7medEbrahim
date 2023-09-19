import 'package:flutter/material.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'package:islamyapp/SuraDetails.dart';
import 'package:islamyapp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => Home(),
        SuraDetails.routeName: (context) => SuraDetails()
      },
      theme: MyThemeData.lightMood,
      darkTheme: MyThemeData.darkMood,
    );
  }
}

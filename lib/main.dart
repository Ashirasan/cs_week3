import 'package:cs_week3/about_page.dart';
import 'package:cs_week3/welcome_page.dart';
import 'package:flutter/material.dart';


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
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.green),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true),
      // home: WelcomePage(),
      initialRoute: '/',
      routes: {
        '/':(context) => WelcomePage(),
        '/aboutpage':(context) =>AboutPage(),
      },
    );
  }
}

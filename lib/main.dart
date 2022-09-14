import 'package:flutter/material.dart';
import 'package:termooo/app/modules/home/views/home_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Termooo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: const Color(0xff6D5B61),
        primaryColorDark: Colors.black,
        primaryColorLight: Colors.green,
        scaffoldBackgroundColor: const Color(0xff6D5B61),
      ),
      home: const HomeView(),
    );
  }
}
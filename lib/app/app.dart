import 'package:flutter/material.dart';
import 'package:prueba/view/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frases de Tía',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashView(),
    );
  }
}
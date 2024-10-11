import 'package:flutter/material.dart';

class SplashView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Text('Hola Mundo'),
             const Text('Hola Mundo'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hola Mundo'),
                Text('Hola Mundo'),
              ],
            ),
            SizedBox(
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
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
             const Text('Frases de la mejor tía'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Text('Generar imagenes'),
                Text('Compartir'),
              ],
            ),
            Image.asset('assets/images/piolin.png', width: 100, height: 100),
            Image.asset('assets/images/piolin_2.png', width: 100, height: 100),
          ],
        ),
      ),
    );
  }

}
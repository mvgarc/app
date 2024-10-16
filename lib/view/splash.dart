import 'package:flutter/material.dart';

class SplashView extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 275,
          ),
          Image.asset('assets/images/piolin_1.png',
            width: 360,
            height: 228,
            ),
          const SizedBox(
            height: 10,
          ),
          Text('Mensajes bonitos para tía',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text('Ten a la mano fotos con mensajes inspiradores a la palma de tu mano, sin necesidad de descargarlas en tu dispositivo.',
            textAlign: TextAlign.center ,),
          ),
          ],
        ),
    );
  }
}
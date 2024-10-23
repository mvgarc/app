import 'package:flutter/material.dart';
import 'package:prueba/view/task_list.dart';

class SplashView extends StatelessWidget{
  const SplashView({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 220,
          ),
          Image.asset('assets/images/piolin_1.png',
            width: 360,
            height: 200,
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
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return TaskListPage();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Ten a la mano fotos con mensajes inspiradores, sin necesidad de descargarlas en tu dispositivo.',
              textAlign: TextAlign.center ,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: OutlinedButton(
              onPressed: () {// Acción
              },
              child: const Text(
                'Siguiente',
                style: TextStyle(fontSize: 15),
              ),
            ),
          )
          ],
        ),
    );
  }
}
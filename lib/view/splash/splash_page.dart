import 'package:flutter/material.dart';
import 'package:prueba/view/components/shape.dart';
import 'package:prueba/view/task_list/task_list.dart';

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
          const Shape(),
          const SizedBox(
            height: 10,
          ),
          Title('Mensajes bonitos para tía'),
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
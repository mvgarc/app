import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  int count = 0;

  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: Center(child: Text('Holis, el contador es $count')),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            count++;
          });
          print('Pulsado');
        },
        child:Icon(Icons.add),),
    );
  }
}

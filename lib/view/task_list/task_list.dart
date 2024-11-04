import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  int count = 0;
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addMessage() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        _messages.add(_controller.text);
        _controller.clear(); // Limpiar el campo después de guardar
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensajes'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            child: Text('Crea tu mensaje'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Escribe tu mensaje',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addMessage,
        child: Icon(Icons.add),
      ),
    );
  }
}

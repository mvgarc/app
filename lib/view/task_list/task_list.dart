import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _allImages = [
    'https://i.pinimg.com/564x/ed/00/f2/ed00f23259c3e4f8acee84e67106bc56.jpg',
    'https://i.pinimg.com/564x/ed/00/f2/ed00f23259c3e4f8acee84e67106bc56.jpg',
    'https://i.pinimg.com/564x/ed/00/f2/ed00f23259c3e4f8acee84e67106bc56.jpg',

  ];
  List<String> _filteredImages = [];

  @override
  void initState() {
    super.initState();
    _filteredImages = List.from(_allImages); // Mostrar todas las imágenes inicialmente
  }

  void _filterImages(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredImages = List.from(_allImages);
      } else {
        _filteredImages = _allImages.where((image) => image.contains(query)).toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería de Fotos'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterImages,
              decoration: InputDecoration(
                labelText: 'Buscar imagen',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Número de columnas en la galería
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: _filteredImages.length,
              itemBuilder: (context, index) {
                return Image.network(
                  _filteredImages[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

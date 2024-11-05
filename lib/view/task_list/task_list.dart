import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _allImages = [
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    'https://i.pinimg.com/474x/52/40/7b/52407b651f189e08e699dfcffe41105e.jpg',
    // Agrega más URLs o usa imágenes locales
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
                crossAxisCount: 2, // Número de columnas en la galería
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: _filteredImages.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4.0, // Sombra para la tarjeta
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      _filteredImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

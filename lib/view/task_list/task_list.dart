import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _allImages = [];
  List<String> _filteredImages = [];

  @override
  void initState() {
    super.initState();
    _fetchImages();
  }

  Future<void> _fetchImages() async {
    try {
      final response = await http.get(Uri.parse('https://randomuser.me/api/?results=30'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        List<String> imageUrls = data['results'].map<String>((user) => user['picture']['large']).toList();

        setState(() {
          _allImages = imageUrls;
          _filteredImages = List.from(_allImages);
        });
      } else {
        // Manejar el error si la solicitud no es exitosa
        throw Exception('Failed to load images');
      }
    } catch (e) {
      print('Error: $e');
    }
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
            child: _filteredImages.isEmpty
                ? Center(child: CircularProgressIndicator())
                : GridView.builder(
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

import 'package:flutter/material.dart';
import 'package:movies/movie/domain/entities/movie.dart';
import 'package:movies/movie/presentation/screens/movies_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movie app',
      home: MoviesScreen()
    );
  }
}

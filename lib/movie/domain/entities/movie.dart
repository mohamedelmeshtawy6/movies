import 'package:equatable/equatable.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movie extends Equatable {
  final String backdropPath;
  final List<int> genreIds;
  final int id;

  final String overview;

  final String title;
  final DateTime releaseDate;

  final double voteAverage;
  Movie({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.overview,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
  });

  @override
  List<Object?> get props =>
      [backdropPath, genreIds, id, overview, title, voteAverage];
}

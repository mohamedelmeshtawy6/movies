import 'package:movies/movie/domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel(
      {required super.backdropPath,
      required super.genreIds,
      required super.id,
      required super.overview,
      required super.title,
      required super.releaseDate,
      required super.voteAverage});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      backdropPath: json['backdropPath'],
      genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
      id: json['id'],
      overview: json['overview'],
      title: json['title'],
      releaseDate: DateTime.parse(json["release_date"]),
      voteAverage: json['voteAverage']);
}

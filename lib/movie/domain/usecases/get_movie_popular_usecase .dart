// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:movies/movie/domain/entities/movie.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';

import '../../../core/exceptions/failure.dart';

class MoviePopularUseCase {
  BaseMovieRepository movieRepository;
  MoviePopularUseCase({
    required this.movieRepository,
  });

  Future<Either<Failure, List<Movie>>> getMoviePopular() async {
    return await movieRepository.getMoviePopular();
  }
}

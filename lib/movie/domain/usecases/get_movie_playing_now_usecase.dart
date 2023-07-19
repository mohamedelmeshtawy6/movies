// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:movies/movie/domain/entities/movie.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';

import '../../../core/exceptions/failure.dart';

class MoviePlayingNowUseCase {
  BaseMovieRepository movieRepository;
  MoviePlayingNowUseCase({
    required this.movieRepository,
  });

 Future<Either<Failure, List<Movie>>> getMoviePlayingNow() async {
    return await movieRepository.getMoviePlayingNow();
  }
}

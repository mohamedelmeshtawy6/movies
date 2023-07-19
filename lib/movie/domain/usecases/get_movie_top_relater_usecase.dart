// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:movies/movie/domain/entities/movie.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';

import '../../../core/exceptions/failure.dart';

class MovieTopRelatedUseCase {
  BaseMovieRepository movieRepository;
  MovieTopRelatedUseCase({
    required this.movieRepository,
  });

  Future<Either<Failure, List<Movie>>> getTopRelated() async {
    return await movieRepository.getMovieTopRelated();
  }
}

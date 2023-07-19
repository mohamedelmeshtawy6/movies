import 'package:dartz/dartz.dart';
import 'package:movies/movie/domain/entities/movie.dart';

import '../../../core/exceptions/failure.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getMoviePlayingNow();
  Future<Either<Failure, List<Movie>>> getMoviePopular();
  Future<Either<Failure, List<Movie>>> getMovieTopRelated();
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/core/exceptions/server_exception.dart';
import 'package:movies/movie/data/datasource/movie_remote_datasource.dart';
import 'package:movies/movie/domain/entities/movie.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';

class MovieRepository extends BaseMovieRepository {
  BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MovieRepository({
    required this.baseMovieRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<Movie>>> getMoviePlayingNow() async {
    final response = await baseMovieRemoteDataSource.getPlayNow();
    try {
      return Right(response);
    } on ServerExceptions catch (error) {
      return Left(GeneralServerFailure(
        generalMessage: error.errorsModel.status_message,
      ));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getMoviePopular() async {
    final response = await baseMovieRemoteDataSource.getPopular();
    try {
      return Right(response);
    } on ServerExceptions catch (error) {
      return Left(GeneralServerFailure(
        generalMessage: error.errorsModel.status_message,
      ));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getMovieTopRelated() async {
    final response = await baseMovieRemoteDataSource.getTopRelated();
    try {
      return Right(response);
    } on ServerExceptions catch (error) {
      return Left(GeneralServerFailure(
        generalMessage: error.errorsModel.status_message,
      ));
    }
  }
}

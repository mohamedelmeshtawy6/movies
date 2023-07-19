import 'package:dio/dio.dart';
import 'package:movies/core/constant/constant.dart';
import 'package:movies/core/exceptions/server_exception.dart';
import 'package:movies/core/network/errors_model.dart';
import 'package:movies/movie/data/model/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getPlayNow();
  Future<List<MovieModel>> getPopular();
  Future<List<MovieModel>> getTopRelated();
}

class MovieRemoteDataSource implements BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getPlayNow() async {
    var resp = await Dio().get(
        '${Constant.baseUrl}/movie/now_playing?api_key=${Constant.apiKey}');

    if (resp.statusCode == 200) {
      return List<MovieModel>.from(
          (resp.data['results'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerExceptions(errorsModel: ErrorModel.fromJson(resp.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    var resp = await Dio()
        .get('${Constant.baseUrl}/movie/popular?api_key=${Constant.apiKey}');

    if (resp.statusCode == 200) {
      return List<MovieModel>.from(
          (resp.data['results'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerExceptions(errorsModel: ErrorModel.fromJson(resp.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRelated() async {
    var resp = await Dio()
        .get('${Constant.baseUrl}/movie/top_rated?api_key=${Constant.apiKey}');

    if (resp.statusCode == 200) {
      return List<MovieModel>.from(
          (resp.data['results'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerExceptions(errorsModel: ErrorModel.fromJson(resp.data));
    }
  }
}

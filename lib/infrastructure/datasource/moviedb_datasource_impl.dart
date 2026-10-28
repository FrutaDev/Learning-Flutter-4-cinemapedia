import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasource/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie_entity.dart';
import 'package:cinemapedia/infrastructure/mappers/movie_mapper.dart';
import 'package:dio/dio.dart';

import '../models/moviedb/moviedb_response.dart';

class MovieDbDatasourceImpl extends MoviesDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://api.themoviedb.org/3",
      queryParameters: {
        'api_key': Environment.movieDbKey,
        'language': 'es-MX'
      }
    )
  );

  @override
  Future<List<MovieEntity>> getNowPlaying({int page = 1}) async {

    final response = await dio.get("/movie/now_playing");
    final movieDbResponse = MovieDbResponse.fromJson(response.data);

    final List<MovieEntity> movies = movieDbResponse.results
        .where((movieDb) => movieDb.posterPath != '')
        .map(
            (movieDb) => MovieMapper.movieDbToEntity(movieDb)
        )
        .toList();

    return movies;
  }

}
import 'package:cinemapedia/domain/datasource/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie_entity.dart';

import '../../domain/repositories/movies_repository.dart';

class MovieDbRepositoryImpl implements MoviesRepository {

  final MoviesDatasource moviesDatasource;

  MovieDbRepositoryImpl({
    required this.moviesDatasource
  });

  @override
  Future<List<MovieEntity>> getNowPlaying({int page = 1}) {
    return moviesDatasource.getNowPlaying(page: page);
  }

}
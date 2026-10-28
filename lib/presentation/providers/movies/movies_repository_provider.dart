


import 'package:cinemapedia/infrastructure/datasource/moviedb_datasource_impl.dart';
import 'package:cinemapedia/infrastructure/repository/moviedb_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieDbRepositoryImpl(
      moviesDatasource: MovieDbDatasourceImpl()
    );
  }
);


import 'package:cinemapedia/domain/entities/movie_entity.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static MovieEntity movieDbToEntity(MovieMovieDb movieDb) => MovieEntity(
        adult: movieDb.adult,
        backdropPath: movieDb.backdropPath != ''
        ? 'https://image.tmdb.org/t/p/w500${ movieDb.backdropPath }'
        : 'https://cdn.displate.com/artwork/857x1200/2024-04-10/ec27e01e31a774ab9a168d922d07c33e_ff36b6b0233da0913042c802de7948e5.jpg',
        genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
        id: movieDb.id,
        originalLanguage: movieDb.originalLanguage,
        originalTitle: movieDb.originalTitle,
        overview: movieDb.overview,
        popularity: movieDb.popularity,
        posterPath: movieDb.posterPath != ''
            ? 'https://image.tmdb.org/t/p/w500${ movieDb.posterPath }'
            : 'no-poster',
        releaseDate: movieDb.releaseDate,
        title: movieDb.title,
        video: movieDb.video,
        voteAverage: movieDb.voteAverage,
        voteCount: movieDb.voteCount
    );
}
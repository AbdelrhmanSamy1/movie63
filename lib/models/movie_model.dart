
class Movie {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
      adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'] ?? '',
      genreIds: List<int>.from(json['genre_ids'] ?? []),
      id: json['id'] ?? 0,
      originalLanguage: json['original_language'] ?? '',
      originalTitle: json['original_title'] ?? '',
      overview: json['overview'] ?? '',
      popularity: (json['popularity'] ?? 0).toDouble(),
      posterPath: json ['poster_path'] ?? '',
      releaseDate: json ['release_date'] ?? '',
      title: json ['title'] ?? '',
      video: json ['video'] ?? false,
      voteAverage: (json['vote_average'] ?? 0).toDouble(),
      voteCount: json ['vote_count'] ?? 0,
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'adult' : adult,
      'backdrop_path' : backdropPath,
      'genre_ids' : genreIds,
      'id' : id,
      'original_language' : originalLanguage,
      'original_title' :originalTitle,
      'overview' : overview,
      'popularity' : popularity,
      'poster_path' : posterPath,
      'release_date' : releaseDate,
      'title' : title,
      'video' : video,
      'vote_average' : voteAverage,
      'vote_count' : voteCount,

    };
  }
}

class MovieResponse {
  final List<Movie> results;

  MovieResponse({required this.results});

  factory MovieResponse.fromJson(Map<String, dynamic> json){
    return MovieResponse(
        results: List<Movie>.from(
            (json['results'] ?? []).map((movie) => Movie.fromJson(movie))
        )
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'results' : results.map((movie) => movie.toJson()).toList()
    };
  }
}
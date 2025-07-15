import 'package:equatable/equatable.dart';
import 'package:netplix63/models/movie_model.dart';

abstract class NowPlayingState extends Equatable{
  const NowPlayingState();

  @override
  List<Object?> get props => [];

}
class NowPlayingInitial extends NowPlayingState{}

class NowPlayingLoading extends NowPlayingState{}

class NowPlayingLoaded extends NowPlayingState{
  final MovieResponse movieResponse;

  NowPlayingLoaded(this.movieResponse);
  @override
  List<Object?> get props => [movieResponse];
}

class NowPlayingError extends NowPlayingState{
  final String message;

  NowPlayingError(this.message);

  @override
  List<Object?> get props => [message];
}
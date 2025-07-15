import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netplix63/logic/now_playing/now_playing_event.dart';
import 'package:netplix63/logic/now_playing/now_playing_state.dart';
import 'package:netplix63/models/movie_model.dart';

class NowPlayingBloc extends Bloc<NowPlayingEvent, NowPlayingState>{
  Dio dio;
  NowPlayingBloc(this.dio) : super(NowPlayingInitial()) {
    on<FetchNowPlayingMovies>((event, emit) async{
      emit(NowPlayingLoading());
      
      try{
        final response = await dio.get(
            "https://api.themoviedb.org/3/movie/now_playing?api_key=87903828b97a85b50c60fb3bbd960c55");
        if(response.statusCode == 200){
          final movieResponse = MovieResponse.fromJson(response.data);
          emit(NowPlayingLoaded(movieResponse));
        } else{
          emit(NowPlayingError("Failed to load data"));
        }
      }catch (e){
        emit(NowPlayingError(e.toString()));
      }
    });
  }
}
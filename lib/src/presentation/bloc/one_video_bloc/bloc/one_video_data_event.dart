part of 'one_video_data_bloc.dart';

sealed class OneVideoDataEvent extends Equatable {
  const OneVideoDataEvent();

  @override
  List<Object> get props => [];
}

class OneVideoDataCustomEvent extends OneVideoDataEvent {
  int movieID;
  OneVideoDataCustomEvent({required this.movieID});
  @override
  List<Object> get props => [movieID];
}

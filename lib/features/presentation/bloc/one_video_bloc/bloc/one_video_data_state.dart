part of 'one_video_data_bloc.dart';

sealed class OneVideoDataState extends Equatable {
  const OneVideoDataState();

  @override
  List<Object> get props => [];
}

final class OneVideoDataInitial extends OneVideoDataState {
  @override
  List<Object> get props => [];
}

final class OneVideoDataLoading extends OneVideoDataState {
  @override
  List<Object> get props => [];
}

final class OneVideoDataFailure extends OneVideoDataState {
  String message;
  OneVideoDataFailure({required this.message});
  @override
  List<Object> get props => [message];
}

final class OneVideoDataSuccess extends OneVideoDataState {
  OneVideoDataMs? fetData;
  OneVideoDataSuccess({required this.fetData});
  @override
  List<Object> get props => [fetData!];
}

part of 'all_data_bloc.dart';

sealed class AllDataEvent extends Equatable {
  const AllDataEvent();

  @override
  List<Object> get props => [];
}

class AllDataCustomEvent extends AllDataEvent {
   @override
  List<Object> get props => [];
}

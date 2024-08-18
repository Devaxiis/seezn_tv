part of 'all_data_bloc.dart';

sealed class AllDataState extends Equatable {
  const AllDataState();

  @override
  List<Object> get props => [];
}

final class AllDataInitial extends AllDataState {
    @override
  List<Object> get props => [];
}

final class AllDataCustomLoading extends AllDataState {
    @override
  List<Object> get props => [];
  }

final class AllDataCustomFailure extends AllDataState {
    @override
  List<Object> get props => [];
}

final class AllDataCustomSuccess extends AllDataState {
  List<ResultsDataMs> fetchData;
  AllDataCustomSuccess({required this.fetchData});

    @override
  List<Object> get props => [fetchData];
}

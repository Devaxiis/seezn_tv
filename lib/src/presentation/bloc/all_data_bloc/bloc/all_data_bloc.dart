import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:seezn_tv_app/src/domain/models/all_video/all_data_ms.dart';
import 'package:seezn_tv_app/src/domain/models/all_video/results_data_ms.dart';
import 'package:seezn_tv_app/src/injector.dart';

import '../../../../config/apis.dart';

part 'all_data_event.dart';
part 'all_data_state.dart';

class AllDataBloc extends Bloc<AllDataEvent, AllDataState> {
  AllDataBloc() : super(AllDataInitial()) {
    on<AllDataCustomEvent>(_getAllData);
  }

  void _getAllData(AllDataCustomEvent event, Emitter emit) async {
    emit(AllDataCustomLoading());

    AllDataMs? response = await repository.getAllData(Apis.api);
    if (response!.results != []) {
    emit(AllDataCustomSuccess(fetchData: response!.results));
    }else{
    emit(AllDataCustomFailure());
    }

  }
}

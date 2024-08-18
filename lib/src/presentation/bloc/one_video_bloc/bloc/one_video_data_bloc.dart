import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:seezn_tv_app/src/config/apis.dart';
import 'package:seezn_tv_app/src/domain/models/one_video/one_video_data_ms.dart';
import 'package:seezn_tv_app/src/injector.dart';

part 'one_video_data_event.dart';
part 'one_video_data_state.dart';

class OneVideoDataBloc extends Bloc<OneVideoDataEvent, OneVideoDataState> {
  OneVideoDataBloc() : super(OneVideoDataInitial()) {
    on<OneVideoDataCustomEvent>(_oneVideoData);
  }

  void _oneVideoData(OneVideoDataCustomEvent event, Emitter emit) async {
    emit(OneVideoDataLoading());

    final response = await repository.getOneVideoData(Apis.api, event.movieID);
    if (response!.id != 0) {
    emit(OneVideoDataSuccess(fetData: response));
    }else{
    emit(OneVideoDataFailure(message: ""));
    }
  }
}

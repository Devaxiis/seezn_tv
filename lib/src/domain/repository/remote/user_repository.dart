import 'package:seezn_tv_app/src/domain/models/all_video/all_data_ms.dart';
import 'package:seezn_tv_app/src/domain/models/one_video/one_video_data_ms.dart';

abstract class UserRepository {
  Future<AllDataMs?> getAllData(String url);
  Future<OneVideoDataMs?> getOneVideoData(String url,int id);
}

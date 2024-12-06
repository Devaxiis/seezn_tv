import 'dart:convert';
import 'dart:developer';

import 'package:seezn_tv_app/data/remote/network.dart';
import 'package:seezn_tv_app/domain/models/all_video/all_data_ms.dart';
import 'package:seezn_tv_app/domain/models/one_video/one_video_data_ms.dart';
import 'package:seezn_tv_app/domain/repository/remote/user_repository.dart';


class UserRepositoryImpl implements UserRepository {
  final Network network;

  UserRepositoryImpl({required this.network});

  @override
  Future<AllDataMs?> getAllData(String url) async {
    String? response = await network.methodGet(
      api: url,
    );
    log("All Manuments::: ${response} :::");
    if (response == null) {
      log("Nulled");
      return null;
    } else {
       Map json = jsonDecode(response) as Map;
      print("------------");
      log(":::::Json::: $json :::");
      print("------------");

      final item = AllDataMs.fromMap(json as Map<String,dynamic>);
      log("ItemCount::: ${item.count} :::");
      return item;
    }
  }

  @override
  Future<OneVideoDataMs?> getOneVideoData(String url, int id) async{
    String? response = await network.methodGet(
      api: url,
      id: id
    );
    log("All Manuments::: ${response} :::");
    if (response == null) {
      log("Nulled");
      return null;
    } else {
       Map json = jsonDecode(response) as Map;
      print("------------");
      log(":::::Json::: $json :::");
      print("------------");

      final item = OneVideoDataMs.fromMap(json as Map<String,dynamic>);
      log("ItemCount::: ${item.count} :::");
      return item;
    }
  }
}

import 'dart:convert';
import 'package:seezn_tv_app/src/domain/models/one_video/content_source_data_ms.dart';

class ContentsDataMs {
 int id;
 String? skip_start_time;
 String? skip_end_time;
 int index;
 List<ContentSourceDataMs> sources;
  ContentsDataMs({
    required this.id,
    this.skip_start_time,
    this.skip_end_time,
    required this.index,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'skip_start_time': skip_start_time,
      'skip_end_time': skip_end_time,
      'index': index,
      'sources': sources.map((x) => x.toMap()).toList(),
    };
  }

  factory ContentsDataMs.fromMap(Map<String, dynamic> map) {
    return ContentsDataMs(
      id: map['id']?.toInt() ?? 0,
      skip_start_time: map['skip_start_time'],
      skip_end_time: map['skip_end_time'],
      index: map['index']?.toInt() ?? 0,
      sources: List<ContentSourceDataMs>.from(map['sources']?.map((x) => ContentSourceDataMs.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ContentsDataMs.fromJson(String source) => ContentsDataMs.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContentsDataMs(id: $id, skip_start_time: $skip_start_time, skip_end_time: $skip_end_time, index: $index, sources: $sources)';
  }
}

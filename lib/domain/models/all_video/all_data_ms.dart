import 'dart:convert';

import 'package:seezn_tv_app/domain/models/all_video/results_data_ms.dart';

class AllDataMs {
  int count;
  String? next;
  String? previous;
  List<ResultsDataMs> results;
  AllDataMs({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });


  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory AllDataMs.fromMap(Map<String, dynamic> map) {
    return AllDataMs(
      count: map['count']?.toInt() ?? 0,
      next: map['next'],
      previous: map['previous'],
      results: List<ResultsDataMs>.from(map['results']?.map((x) => ResultsDataMs.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllDataMs.fromJson(String source) => AllDataMs.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AllDataMs(count: $count, next: $next, previous: $previous, results: $results)';
  }
}

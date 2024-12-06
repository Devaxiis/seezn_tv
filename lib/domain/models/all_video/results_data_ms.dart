import 'dart:convert';

import 'package:seezn_tv_app/domain/models/all_video/category_data_ms.dart';
import 'package:seezn_tv_app/domain/models/all_video/genre_data_ms.dart';

class ResultsDataMs {
  int id;
  String poster_desktop;
  String poster_mobile;
  String poster_video;
  String poster_card;
  String title;
  List<GenreDataMs> genre;
  List<CategoryDataMs> category;
  int age_limit;
  String release_date;
  Map<String,int> count;
  int view;
  ResultsDataMs({
    required this.id,
    required this.poster_desktop,
    required this.poster_mobile,
    required this.poster_video,
    required this.poster_card,
    required this.title,
    required this.genre,
    required this.category,
    required this.age_limit,
    required this.release_date,
    required this.count,
    required this.view,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'poster_desktop': poster_desktop,
      'poster_mobile': poster_mobile,
      'poster_video': poster_video,
      'poster_card': poster_card,
      'title': title,
      'genre': genre.map((x) => x.toMap()).toList(),
      'category': category.map((x) => x.toMap()).toList(),
      'age_limit': age_limit,
      'release_date': release_date,
      'count': count,
      'view': view,
    };
  }

  factory ResultsDataMs.fromMap(Map<String, dynamic> map) {
    return ResultsDataMs(
      id: map['id']?.toInt() ?? 0,
      poster_desktop: map['poster_desktop'] ?? '',
      poster_mobile: map['poster_mobile'] ?? '',
      poster_video: map['poster_video'] ?? '',
      poster_card: map['poster_card'] ?? '',
      title: map['title'] ?? '',
      genre: List<GenreDataMs>.from(map['genre']?.map((x) => GenreDataMs.fromMap(x))),
      category: List<CategoryDataMs>.from(map['category']?.map((x) => CategoryDataMs.fromMap(x))),
      age_limit: map['age_limit']?.toInt() ?? 0,
      release_date: map['release_date'] ?? '',
      count: Map<String,int>.from(map['count']),
      view: map['view']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultsDataMs.fromJson(String source) => ResultsDataMs.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ResultsDataMs(id: $id, poster_desktop: $poster_desktop, poster_mobile: $poster_mobile, poster_video: $poster_video, poster_card: $poster_card, title: $title, genre: $genre, category: $category, age_limit: $age_limit, release_date: $release_date, count: $count, view: $view)';
  }
}

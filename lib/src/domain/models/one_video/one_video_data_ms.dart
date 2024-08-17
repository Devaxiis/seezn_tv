import 'dart:convert';

import 'package:seezn_tv_app/src/domain/models/all_video/category_data_ms.dart';
import 'package:seezn_tv_app/src/domain/models/all_video/genre_data_ms.dart';
import 'package:seezn_tv_app/src/domain/models/one_video/contents_data_ms.dart';
import 'package:seezn_tv_app/src/domain/models/one_video/kadrs_data_ms.dart';
import 'package:seezn_tv_app/src/domain/models/one_video/tag_data_ms.dart';


class OneVideoDataMs {
 int id;
 int view;
 Map<String, int> count;
 List breaks;
 String poster_desktop;
 String poster_mobile;
 String poster_card;
 String poster_video;
 String title;
 String description;
 int age_limit;
 String release_date;
 String upload_at;
 List<KadrsDataMs> kadrs;
 List<GenreDataMs> genre;
 List<CategoryDataMs> category;
 List<ContentsDataMs> contents;
 List ova;
 List chronology;
 List<TagDataMs> tags;
  OneVideoDataMs({
    required this.id,
    required this.view,
    required this.count,
    required this.breaks,
    required this.poster_desktop,
    required this.poster_mobile,
    required this.poster_card,
    required this.poster_video,
    required this.title,
    required this.description,
    required this.age_limit,
    required this.release_date,
    required this.upload_at,
    required this.kadrs,
    required this.genre,
    required this.category,
    required this.contents,
    required this.ova,
    required this.chronology,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'view': view,
      'count': count,
      'breaks': breaks,
      'poster_desktop': poster_desktop,
      'poster_mobile': poster_mobile,
      'poster_card': poster_card,
      'poster_video': poster_video,
      'title': title,
      'description': description,
      'age_limit': age_limit,
      'release_date': release_date,
      'upload_at': upload_at,
      'kadrs': kadrs.map((x) => x.toMap()).toList(),
      'genre': genre.map((x) => x.toMap()).toList(),
      'category': category.map((x) => x.toMap()).toList(),
      'contents': contents.map((x) => x.toMap()).toList(),
      'ova': ova,
      'chronology': chronology,
      'tags': tags.map((x) => x.toMap()).toList(),
    };
  }

  factory OneVideoDataMs.fromMap(Map<String, dynamic> map) {
    return OneVideoDataMs(
      id: map['id']?.toInt() ?? 0,
      view: map['view']?.toInt() ?? 0,
      count: Map<String, int>.from(map['count']),
      breaks: List.from(map['breaks']),
      poster_desktop: map['poster_desktop'] ?? '',
      poster_mobile: map['poster_mobile'] ?? '',
      poster_card: map['poster_card'] ?? '',
      poster_video: map['poster_video'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      age_limit: map['age_limit']?.toInt() ?? 0,
      release_date: map['release_date'] ?? '',
      upload_at: map['upload_at'] ?? '',
      kadrs: List<KadrsDataMs>.from(map['kadrs']?.map((x) => KadrsDataMs.fromMap(x))),
      genre: List<GenreDataMs>.from(map['genre']?.map((x) => GenreDataMs.fromMap(x))),
      category: List<CategoryDataMs>.from(map['category']?.map((x) => CategoryDataMs.fromMap(x))),
      contents: List<ContentsDataMs>.from(map['contents']?.map((x) => ContentsDataMs.fromMap(x))),
      ova: List.from(map['ova']),
      chronology: List.from(map['chronology']),
      tags: List<TagDataMs>.from(map['tags']?.map((x) => TagDataMs.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory OneVideoDataMs.fromJson(String source) => OneVideoDataMs.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OneVideoDataMs(id: $id, view: $view, count: $count, breaks: $breaks, poster_desktop: $poster_desktop, poster_mobile: $poster_mobile, poster_card: $poster_card, poster_video: $poster_video, title: $title, description: $description, age_limit: $age_limit, release_date: $release_date, upload_at: $upload_at, kadrs: $kadrs, genre: $genre, category: $category, contents: $contents, ova: $ova, chronology: $chronology, tags: $tags)';
  }
}


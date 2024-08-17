import 'dart:convert';


class ContentSourceDataMs {
int id;
String quality;
String link;
String? file_id;
  ContentSourceDataMs({
    required this.id,
    required this.quality,
    required this.link,
    this.file_id,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quality': quality,
      'link': link,
      'file_id': file_id,
    };
  }

  factory ContentSourceDataMs.fromMap(Map<String, dynamic> map) {
    return ContentSourceDataMs(
      id: map['id']?.toInt() ?? 0,
      quality: map['quality'] ?? '',
      link: map['link'] ?? '',
      file_id: map['file_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContentSourceDataMs.fromJson(String source) => ContentSourceDataMs.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContentSourceDataMs(id: $id, quality: $quality, link: $link, file_id: $file_id)';
  }
}

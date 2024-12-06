import 'dart:convert';

class TagDataMs {
 int id;
 String tag;
  TagDataMs({
    required this.id,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tag': tag,
    };
  }

  factory TagDataMs.fromMap(Map<String, dynamic> map) {
    return TagDataMs(
      id: map['id']?.toInt() ?? 0,
      tag: map['tag'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TagDataMs.fromJson(String source) => TagDataMs.fromMap(json.decode(source));

  @override
  String toString() => 'TagDataMs(id: $id, tag: $tag)';
}

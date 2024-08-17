import 'dart:convert';

class GenreDataMs {
 int id;
 String genre;
  GenreDataMs({
    required this.id,
    required this.genre,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'genre': genre,
    };
  }

  factory GenreDataMs.fromMap(Map<String, dynamic> map) {
    return GenreDataMs(
      id: map['id']?.toInt() ?? 0,
      genre: map['genre'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GenreDataMs.fromJson(String source) => GenreDataMs.fromMap(json.decode(source));

  @override
  String toString() => 'GenreDataMs(id: $id, genre: $genre)';
}

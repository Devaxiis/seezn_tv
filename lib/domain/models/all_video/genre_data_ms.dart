import 'dart:convert';

class GenreDataMs {
  int id;
  GenreMs genre;

  GenreDataMs({
    required this.id,
    required this.genre,
  });

  
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'genre': genre.toMap(),
    };
  }

  factory GenreDataMs.fromMap(Map<String, dynamic> map) {
    return GenreDataMs(
      id: map['id']?.toInt() ?? 0,
      genre: GenreMs.fromMap(map['genre']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenreDataMs.fromJson(String source) => GenreDataMs.fromMap(json.decode(source));

  @override
  String toString() => 'GenreDataMs(id: $id, genre: $genre)';
}

class GenreMs {
  int id;
  String item;
  GenreMs({
    required this.id,
    required this.item,
  });
  
  @override
  String toString() {
    return "GenreMs(id: $id, item: $item)";
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'item': item,
    };
  }

  factory GenreMs.fromMap(Map<String, dynamic> map) {
    return GenreMs(
      id: map['id']?.toInt() ?? 0,
      item: map['item'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GenreMs.fromJson(String source) => GenreMs.fromMap(json.decode(source));
}

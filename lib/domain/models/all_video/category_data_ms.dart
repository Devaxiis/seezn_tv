import 'dart:convert';

class CategoryDataMs {
  int id;
  CategoryMs category;
  CategoryDataMs({
    required this.id,
    required this.category,
  });
 
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'category': category.toMap(),
    };
  }

  factory CategoryDataMs.fromMap(Map<String, dynamic> map) {
    return CategoryDataMs(
      id: map['id']?.toInt() ?? 0,
      category: CategoryMs.fromMap(map['category']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryDataMs.fromJson(String source) => CategoryDataMs.fromMap(json.decode(source));

  @override
  String toString() => 'CategoryDataMs(id: $id, category: $category)';
}

class CategoryMs {
  int id;
  String item;
  CategoryMs({
    required this.id,
    required this.item,
  });
 
 

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'item': item,
    };
  }

  factory CategoryMs.fromMap(Map<String, dynamic> map) {
    return CategoryMs(
      id: map['id']?.toInt() ?? 0,
      item: map['item'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryMs.fromJson(String source) => CategoryMs.fromMap(json.decode(source));

  @override
  String toString() => 'CategoryMs(id: $id, item: $item)';
}

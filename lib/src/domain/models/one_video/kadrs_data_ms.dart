import 'dart:convert';

class KadrsDataMs {
 int id;
 String cadr;
  KadrsDataMs({
    required this.id,
    required this.cadr,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cadr': cadr,
    };
  }

  factory KadrsDataMs.fromMap(Map<String, dynamic> map) {
    return KadrsDataMs(
      id: map['id']?.toInt() ?? 0,
      cadr: map['cadr'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory KadrsDataMs.fromJson(String source) => KadrsDataMs.fromMap(json.decode(source));

  @override
  String toString() => 'KadrsDataMs(id: $id, cadr: $cadr)';
}

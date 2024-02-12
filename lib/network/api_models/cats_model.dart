class Cats {
  final String? user;
  final String? type;
  final String? text;

  Cats(this.user, this.type, this.text);

  factory Cats.fromJson(Map<String, dynamic> json) {
    return Cats(json["user"] as String?, json["type"] as String?, json["text"] as String?);
  }
}

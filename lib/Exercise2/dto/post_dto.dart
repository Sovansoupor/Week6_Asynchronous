
class PostDTO {
  final int id;
  final String title;
  final String body;

  PostDTO({required this.id, required this.title, required this.body});

  // Method to create a PostDTO from JSON
  static PostDTO fromJson(Map<String, dynamic> json) {
    // Validate fields
    assert(json['id'] is int);
    assert(json['title'] is String);
    assert(json['body'] is String);

    return PostDTO(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

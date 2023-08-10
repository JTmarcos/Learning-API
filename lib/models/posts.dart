class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);
  factory Post.fromJson(Map json) {
    return Post(
      json['userId'] as int,
      json['id'] as int,
      json['title'] as String,
      json['body']as String,
    );
  }

  @override
  String toString() {
    return "id: $id";
  }
}

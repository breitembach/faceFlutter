enum PostType {
  link,
  component,
  artic,
}

class PostModel {
  PostModel({
    this.id,
    this.type,
    this.title,
    this.tags,
    this.content,
    this.link,
    this.imageUrl,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json['id'],
        type: json['type'],
        title: json['title'],
        tags: json['tags'],
        content: json['content'],
        link: json['link'],
        imageUrl: json['imageUrl'],
      );

  final String id;
  final PostType type;
  final String title;
  final List<String> tags;
  final String content;
  final String link;
  final String imageUrl;

  Map<String, dynamic> tojson() {
    String type;

    switch (this.type) {
      case PostType.link:
        type = 'link';
        break;
      case PostType.component:
        type = 'component';
        break;
      case PostType.artic:
        type = 'artic';
        break;
    }

    return {
      'id': id,
      'type': type,
      'title': title,
      'tags': tags,
      'content': content,
      'link': link,
      'imageUrl': imageUrl,
    };
  }
}

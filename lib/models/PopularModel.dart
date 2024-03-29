class Autogenerated {
	String description;
	String title;
  String imageUrl;
	int likes;
	Comments comments;

	Autogenerated({this.description, this.title, this.likes, this.comments, this.imageUrl});

	Autogenerated.fromJson(Map<String, dynamic> json) {
		description = json['description'];
		title = json['title'];
		likes = json['likes'];
    imageUrl = json['imageUrl'];
		comments = json['comments'] != null ? new Comments.fromJson(json['comments']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['description'] = this.description;
		data['title'] = this.title;
		data['likes'] = this.likes;
    data['imageUrl'] = this.imageUrl;
		if (this.comments != null) {
      data['comments'] = this.comments.toJson();
    }
		return data;
	}
}

class Comments {
  String comment;

	Comments({this.comment});

	Comments.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}
import 'package:faceflutter/post/postModel.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseProvider {
  static const post = "post";
  final databaseReference = FirebaseDatabase.instance.reference();
  bool savePost(
    PostModel postModel,
  ) {
    databaseReference.child(post).set(postModel.tojson());
  }
}

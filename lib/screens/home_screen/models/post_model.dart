import "package:android_dev/screens/home_screen/models/comment_model.dart";

class PostModel {
  final String? imageUrl;
  int? likeCount;
  int? commentCount;
  final String? description;
  final List<CommentModel> comments;
  bool isLiked = false;

  PostModel({
    this.imageUrl,
    this.likeCount,
    int? commentCount,
    this.description,
    List<CommentModel>? comments,
  })  : comments = comments ?? [],
        commentCount = commentCount ?? comments?.length ?? 0;

  void addLike(int newCount) {
    likeCount = newCount;
  }

  void addComment(int newCount) {
    commentCount = newCount;
  }
}
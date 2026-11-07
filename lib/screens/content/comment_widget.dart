import "package:android_dev/screens/home_screen/models/comment_model.dart";
import "package:android_dev/widgets/avatar.dart";
import "package:flutter/material.dart";

class CommentWidget extends StatelessWidget {
  final CommentModel comment;
  const CommentWidget({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Avatar(imageUrl: comment.avatarUrl, radius: 16),
          const SizedBox(width: 10),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${comment.author} ',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: comment.text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
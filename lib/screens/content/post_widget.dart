import "package:android_dev/screens/content/comment_widget.dart";
import "package:android_dev/screens/home_screen/models/comment_model.dart";
import "package:android_dev/screens/home_screen/models/post_model.dart";
import "package:flutter/material.dart";

class PostWidget extends StatefulWidget {
  final PostModel? post;
  const PostWidget({super.key, required this.post});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  void toggleLike() {
    final post = widget.post;
    if (post == null) return;
    setState(() {
      if (post.isLiked) {
        post.addLike((post.likeCount ?? 1) - 1);
      } else {
        post.addLike((post.likeCount ?? 0) + 1);
      }
      post.isLiked = !post.isLiked;
    });
  }

  void openBottomSheet() {
    final post = widget.post;
    if (post == null) return;
    final controller = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SizedBox(
                height: 420,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Комментарии',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(height: 1),
                    Expanded(
                      child: post.comments.isEmpty
                          ? const Center(child: Text('Пока нет комментариев'))
                          : ListView.builder(
                        itemCount: post.comments.length,
                        itemBuilder: (context, index) => CommentWidget(
                          comment: post.comments[index],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: controller,
                              decoration: const InputDecoration(
                                hintText: 'Добавить комментарий...',
                                border: OutlineInputBorder(),
                                isDense: true,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.send),
                            onPressed: () {
                              final text = controller.text.trim();
                              if (text.isEmpty) return;
                              post.comments.add(CommentModel(
                                author: 'me',
                                avatarUrl: 'https://i.pravatar.cc/100?u=me',
                                text: text,
                              ));
                              post.addComment(post.comments.length);
                              controller.clear();
                              setModalState(() {});
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final post = widget.post;
    final isLiked = post?.isLiked ?? false;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              post?.imageUrl ?? 'https://via.placeholder.com/150',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : null,
                ),
                onPressed: toggleLike,
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: openBottomSheet,
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Лайков: ${post?.likeCount ?? 0}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: Text(
              post?.description ?? '',
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: openBottomSheet,
              child: Text(
                'Все комментарии (${post?.commentCount ?? 0})',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
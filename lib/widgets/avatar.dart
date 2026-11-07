import "package:flutter/material.dart";

class Avatar extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const Avatar({super.key, required this.imageUrl, this.radius = 20});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey[300],
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
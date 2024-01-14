import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, required this.height}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 100,
      fit: BoxFit.cover,
    );
  }
}

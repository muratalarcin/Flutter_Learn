import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String _imagePath =
      'https://pluspng.com/img-png/apple-and-book-png-apple-book-cartoon-education-knowledge-school-stack-icon-512.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(ImageItems().appleBook),
            ),
          ),
          const Padding(padding: EdgeInsets.all(16)),
          SizedBox(
            height: 300,
            width: 300,
            child: PngImage(path: ImageItems().appleBookPath),
          ),
          SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                _imagePath,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.abc_outlined),
              ))
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook =
      'assets/apple-and-book-png-apple-book-education-knowledge-learn-school-study-icon-512-526315340.png';
  final String appleBook = 'assets/png/ic_apple_with_school.png';
  final String appleBookPath = 'ic_apple_with_school';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$path.png';
}

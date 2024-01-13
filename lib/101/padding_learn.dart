import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: ProjectPadding.pagePaddingVertical,
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200) + const EdgeInsets.symmetric(vertical: 10),
            child: const Text('data'),
          )
        ]),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
}

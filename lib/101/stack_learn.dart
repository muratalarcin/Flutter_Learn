import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Positioned(
              height: 100,
              top: 25,
              right: 0,
              left: 0,
              child: Container(
                color: Colors.grey,
              )),
          Positioned.fill(
              top: 140,
              child: Container(
                color: Colors.pink,
              )),
        ],
      ),
    );
  }
}

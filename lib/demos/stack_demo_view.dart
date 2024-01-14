import 'package:flutter/material.dart';
import 'package:flutter_application_first/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                      bottom: _cardHeight / 2,
                      child: const RandomImage(
                        height: 50,
                      )),
                  Positioned(
                      height: _cardHeight,
                      width: 200,
                      bottom: 0,
                      child: const Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(),
                      )),
                ],
              )),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    const text = Text('Murat');
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const CustomCard(
              child: SizedBox(
            height: 100,
            width: 300,
            child: Center(
              child: Text('data'),
            ),
          )),
          Card(
            color: Theme.of(context).colorScheme.error,
            margin: ProjectMargin.cardMargin,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(
                height: 100,
                width: 100,
                child: Center(
                  child: text,
                )),
          ),
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(16);
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: StadiumBorder(),
      color: Colors.amber,
      child: SizedBox(
        height: 100,
        width: 500,
      ),
    );
  }
}


//borders
// stadiumborder(), CircleBorder(), RoundedRectangeBorder() bunlar radius işte
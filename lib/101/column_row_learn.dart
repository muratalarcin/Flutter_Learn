import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //4+2+2+2
          Expanded(
              flex: 4, //%40
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.grey)),
                  Expanded(child: Container(color: Colors.yellow)),
                  Expanded(child: Container(color: Colors.white)),
                ],
              )),
          const Spacer(
            flex: 2, //%20
          ),
          const Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize:
                  MainAxisSize.max, //bu default olarak böyle. min yaparsak boşluk kalmıyo ortalıyo
              children: [
                Text('a'),
                Text('a2'),
                Text('a3'),
              ],
            ),
          ),
          SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: const Column(
              children: [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Spacer(),
                Expanded(child: Text('data')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static double cardHeight = 200;
}

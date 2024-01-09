import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: Text('a' * 500),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 60,
            child: Text('b' * 50),
          ),
          Container(
            //height: 60,
            //color: Colors.red,
            constraints: const BoxConstraints(maxWidth: 200, minWidth: 100, maxHeight: 120, minHeight: 10),
            child: Text(
              'aa' * 100,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      //color: Colors.red,
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [
        BoxShadow(
          color: Colors.green,
          offset: Offset(
            0,
            1,
          ),
          blurRadius: 12,
        )
      ],
      //shape: BoxShape.circle,
      border: Border.all(
        width: 10,
        color: Colors.white12,
      ));
}

class PrejectContainerDecoration extends BoxDecoration {
  PrejectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            //color: Colors.red,
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                color: Colors.green,
                offset: Offset(
                  0,
                  1,
                ),
                blurRadius: 12,
              )
            ],
            //shape: BoxShape.circle,
            border: Border.all(
              width: 10,
              color: Colors.white12,
            ));
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_first/101/container_sized_box_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //CupertinoApp de yapabiliriz, baştan sonra ios için yazıcaksak. Bu halde 2 side kullanılıyor.
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ContainerSizedBoxLearn(),
    );
  }
}

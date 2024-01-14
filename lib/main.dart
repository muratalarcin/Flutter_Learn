import 'package:flutter/material.dart';
import 'package:flutter_application_first/demos/stack_demo_view.dart';

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
      theme: ThemeData.dark()
          .copyWith(progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white)),
      // theme: ThemeData.dark().copyWith(
      //     appBarTheme: const AppBarTheme(
      //   centerTitle: true,
      //   backgroundColor: Colors.red,
      //   elevation: 0,
      // )),
      home: const StackDemoView(),
    );
  }
}

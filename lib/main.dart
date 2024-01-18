import 'package:flutter/material.dart';
import 'package:flutter_application_first/demos/color_life_cycle.dart';

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
      theme: ThemeData.dark().copyWith(
        bottomAppBarTheme: const BottomAppBarTheme(shape: CircularNotchedRectangle()),
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        textSelectionTheme: const TextSelectionThemeData(
            selectionColor: Colors.red, cursorColor: Colors.green, selectionHandleColor: Colors.black),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          iconColor: Colors.red,
          labelStyle: TextStyle(color: Colors.lime),
          border: OutlineInputBorder(),
          //floatingLabelStyle: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        //textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.red)),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),

      home: const ColorLifeCycleView(),
    );
  }
}

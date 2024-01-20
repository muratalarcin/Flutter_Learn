import 'package:flutter/material.dart';
import 'package:flutter_application_first/101/icon_learn.dart';
import 'package:flutter_application_first/101/image_learn.dart';
import 'package:flutter_application_first/101/list_tile_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  // ignore: unused_field
  final double _notchValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          }),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: _myTabView(),
          ),
          appBar: AppBar(),
          body: _tabView(),
        ));
  }

  TabBar _myTabView() {
    return TabBar(controller: _tabController, tabs: _MyTabViews.values.map((e) => Tab(text: '${e.name}')).toList());
  }

  TabBarView _tabView() {
    return TabBarView(physics: const NeverScrollableScrollPhysics(), controller: _tabController, children: [
      const ImageLearn(),
      IconLearnView(),
      const ListTileLearn(),
      const TextField(),
    ]);
  }
}

enum _MyTabViews {
  home,
  settings,
  favori,
  profile,
}

extension _MeyTabViewExtentision on _MyTabViews {}

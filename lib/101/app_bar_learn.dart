import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  //final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //app bar temasını mainde ayarla
        //title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        centerTitle: true,
        //backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light, //status bar teması
        leadingWidth: 23, //arrowun sola yaklaşması
        //toolbarTextStyle: const TextStyle(color: Colors.black),
        automaticallyImplyLeading:
            false, //flutter da navigation atayınca back button oto geliyomuş buradan kendimiz kapatabiliyoruz.
        actionsIconTheme: const IconThemeData(color: Colors.blue, size: 50),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}

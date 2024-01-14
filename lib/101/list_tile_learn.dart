import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Image.network(
                  imageUrl,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                //dense: true, ///sıkıştırma yaptırıyo

                ///Başlangıçta mainde temadan listtile nin paddingini 0 a ayarlarsan daha iyi
                contentPadding: EdgeInsets.zero,
                onTap: () {},
                subtitle: const Text('How do you use your card'),
                leading: const Icon(Icons.money),
                trailing: Container(
                  color: Colors.red,
                  child: const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

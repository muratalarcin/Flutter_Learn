import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          child: Text('Save', style: Theme.of(context).textTheme.titleLarge),
          //style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),//direkt backroundu ayarladık
          style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
            //basınca renk değşsin şekli
            if (states.contains(MaterialState.pressed)) {
              return Colors.green;
            }
            return Colors.blue;
          })),
          onPressed: () {},
        ),
        const ElevatedButton(onPressed: null, child: Text('data')), //Null ile tklanamaz oldu
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.all(50),
            ),
            onPressed: () {},
            child: const SizedBox(width: 200, child: Text('data'))),
        OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('data')),
        InkWell(onTap: () {}, child: const Text('custom')), //Double tap falan da ekleniyo daha custom

        Container(
          height: 200,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ))
      ]),
    );
  }
}

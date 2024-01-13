import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_first/101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({Key? key}) : super(key: key);
  final _title = 'Create your first note';
  final _description = 'Add a note ';
  final _createNoteButton = 'Cread a Note';
  final _importNoteButton = 'Import a Note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Color.fromARGB(255, 240, 249, 255),
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(path: ImageItems().appleBookPath),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(
                title: _description * 12,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            _creadElevationButton(context),
            TextButton(
              onPressed: () {},
              child: Text(
                _importNoteButton,
                style: const TextStyle(color: Colors.amber),
              ),
            ),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeight,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _creadElevationButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber, // Arka plan rengi
      ),
      child: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _createNoteButton,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

///Center text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    required this.textAlign,
    required this.title,
  }) : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

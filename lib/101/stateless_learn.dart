import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          TitleTextWidget(
            text: 'murat 1',
          ),
          TitleTextWidget(
            text: 'murat 2',
          ),
          TitleTextWidget(
            text: 'murat 3',
          ),
          TitleTextWidget(
            text: 'murat 4',
          ),
          TitleTextWidget(
            text: 'murat 5',
          ),
          _CustomContainer(),
          _EmtyBox()
        ],
      ),
    );
  }
}

class _EmtyBox extends StatelessWidget {
  const _EmtyBox();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(text!, style: Theme.of(context).textTheme.displaySmall);
  }
}

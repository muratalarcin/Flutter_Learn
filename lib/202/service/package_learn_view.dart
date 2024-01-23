import 'package:flutter/material.dart';
import 'package:flutter_application_first/202/packet/launch_manager.dart';
import 'package:flutter_application_first/202/packet/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
        onPressed: () {
          launchUrl(_url);
        },
      ),
      body: Column(
        children: [
          Text('data', style: Theme.of(context).textTheme.titleMedium),
          const LoadingBar(),
        ],
      ),
    );
  }
}

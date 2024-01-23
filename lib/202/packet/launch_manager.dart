import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');
mixin LaunchMixin {
  void _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

import 'package:url_launcher/url_launcher.dart';

class LaunchUrlService {
  Future<void> launchExternalWeb(String url) async {
    final Uri formattedUrl = Uri.parse(url);

    if (!await launchUrl(formattedUrl)) {
      throw Exception('Could not launch $formattedUrl');
    }
  }

  Future<void> sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'joshgorospe03@gmail.com',
    );
    if (!await launchUrl(emailLaunchUri)) {
      throw Exception('Could not launch $emailLaunchUri');
    }
  }
}

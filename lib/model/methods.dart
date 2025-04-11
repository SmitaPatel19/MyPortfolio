import 'package:url_launcher/url_launcher.dart';

class Method {
  launchURL(String link) async {
    var url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    var url = Uri.parse("tel:9580632505");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    var email = Uri.parse("mailto:miss.smitapatel04@gmail.com");
    try {
      if (await canLaunchUrl(email)) {
        await launchUrl(email);
      } else {
        await launchUrl(
          Uri.parse(
            'https://mail.google.com/mail/?view=cm&to=miss.smitapatel04@gmail.com',
          ),
        );
      }
    } catch (e) {
      print('Could not launch email: $e');
    }
  }
}

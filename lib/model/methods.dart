import 'package:url_launcher/url_launcher.dart';

class Method {

  launchURL(String link) async {
    var url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    var url = Uri.parse("tel:9580632505");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    var email = Uri.parse("mailto:miss.smitapatel04@gmail.com");
    if (await canLaunchUrl(email)) {
      await launchUrl(email);
    } else {
      throw 'Could not launch';
    }
  }

}
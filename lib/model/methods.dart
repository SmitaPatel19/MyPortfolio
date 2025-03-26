import 'package:url_launcher/url_launcher.dart';

class Method {

  launchURL(String link) async {
    var url = link;
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const url = "tel:9580632505";
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    if (await canLaunchUrl("mailto:miss.smitapatel04@gmail.com" as Uri)) {
      await launchUrl("mailto:miss.smitapatel04@gmail.com" as Uri);
    } else {
      throw 'Could not launch';
    }
  }

}
import 'package:explore_mundo_app/utils/colors.dart';
import 'package:explore_mundo_app/utils/env.dart';
import 'package:explore_mundo_app/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          const HeadingText(heading: 'Entre em contato comigo!'),
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 20),
            child: IconButton(
              iconSize: 80,
              icon: const Icon(Ionicons.mail),
              onPressed:() => _launchUrl(Uri.parse(MAIL_TO)),
              color: MyColors.mail,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: IconButton(
              iconSize: 80,
              icon: const Icon(Ionicons.logo_linkedin),
              onPressed: () => _launchUrl(Uri.parse(LINKEDIN)),
              color: MyColors.linkedin,
            ),
          ),
          IconButton(
            iconSize: 80,
            icon: const Icon(Ionicons.logo_github),
            onPressed: () => _launchUrl(Uri.parse(GITHUB)),
            color: MyColors.github,
          ),
        ],
      );
  }

  void _launchUrl(Uri url) async {
    await launchUrl(url);
  }
}


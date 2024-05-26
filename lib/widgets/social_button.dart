import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.url, required this.icon, required this.tooltip});

  final String url;
  final IconData icon;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FloatingActionButton.small(
        heroTag: tooltip,
        backgroundColor: theme.colorScheme.primary,
        tooltip: tooltip,
        onPressed: () {
          launchUrl(Uri.parse(url),
            mode: LaunchMode.externalApplication
          );
        },
        shape: const CircleBorder(),
        child: FaIcon(icon,
          color: theme.colorScheme.onPrimary
        ),
      ),
    );
  }
}
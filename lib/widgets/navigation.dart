import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(url: 'https://www.linkedin.com/in/ryan-dodd-171a30249/', icon: FontAwesomeIcons.linkedinIn, tooltip: "LinkedIn"),
        SocialButton(url: 'https://github.com/Conmmander', icon: FontAwesomeIcons.github, tooltip: "GitHub"),
        SocialButton(url: 'mailto:ryan@ryandodd.org', icon: FontAwesomeIcons.google, tooltip: "ryan@ryandodd.org"),
        SocialButton(url: 'tel:+18473404582', icon: FontAwesomeIcons.phone, tooltip: "(847) 340 - 4582")
      ]
    );
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key, required this.label, required this.route, required this.icon});

  final String label;
  final String route;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return TextButton.icon(
      onPressed: () {
        context.push(route);
      },
      label: Text(label,
        style: TextStyle(
          color: theme.colorScheme.inversePrimary,
        ),
      ),
      icon: Icon(icon,
        color: theme.colorScheme.inversePrimary
      )
    );
  }
}

class Navigation extends StatelessWidget {
  const Navigation({super.key, required this.page});

  final Widget page;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.onSurface,
        elevation: 5,
        shadowColor: theme.colorScheme.shadow,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ryan Dodd",
              style: TextStyle(
                color: theme.colorScheme.onPrimary,
              )
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15
              )
            ),
            const NavigationButton(label: "Home", route: "/", icon: Icons.home),
            const NavigationButton(label: "About", route: "/about", icon: Icons.person),
            const NavigationButton(label: "Experience", route: "/experience", icon: Icons.checklist),
            const NavigationButton(label: "Skills", route: "/skills", icon: Icons.code),
          ]
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0, 0),
            end: const Alignment(1, 1),
            colors: [
              theme.colorScheme.tertiary,
              theme.colorScheme.secondary,
              theme.colorScheme.primary,
            ],
            stops: const [0.0, 0.5, 1.0]
          ),
        ),
        child: Stack(
          children: [
            page,
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Socials(),
              )
            )
          ],
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: FloatingActionButton.small(
            backgroundColor: theme.colorScheme.primary,
            tooltip: "LinkedIn",
            onPressed: () {
              launchUrl(Uri.parse('https://www.linkedin.com/in/ryan-dodd-171a30249/'),
                mode: LaunchMode.externalApplication
              );
            },
            shape: const CircleBorder(),
            child: FaIcon(FontAwesomeIcons.linkedinIn,
              color: theme.colorScheme.onPrimary
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: FloatingActionButton.small(
            backgroundColor: theme.colorScheme.primary,
            tooltip: "Github",
            onPressed: () {
              launchUrl(Uri.parse('https://github.com/Conmmander'),
                mode: LaunchMode.externalApplication
              );
            },
            shape: const CircleBorder(),
            child: Icon(FontAwesomeIcons.github,
              color: theme.colorScheme.onPrimary
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: FloatingActionButton.small(
            backgroundColor: theme.colorScheme.primary,
            tooltip: "ryan@ryandodd.org",
            onPressed: () {
              launchUrl(Uri.parse('mailto:ryan@ryandodd.org'),
                mode: LaunchMode.externalApplication
              );
            },
            shape: const CircleBorder(),
            child: Icon(FontAwesomeIcons.google,
              color: theme.colorScheme.onPrimary
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: FloatingActionButton.small(
            backgroundColor: theme.colorScheme.primary,
            tooltip: "(847) 340 - 4582",
            onPressed: () {
              launchUrl(Uri.parse('tel:+18473404582'),
                mode: LaunchMode.externalApplication
              );
            },
            shape: const CircleBorder(),
            child: Icon(Icons.phone,
              color: theme.colorScheme.onPrimary
            ),
          ),
        ),
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
        context.go(route);
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
            const NavigationButton(label: "Certifications", route: "/certifications", icon: Icons.fact_check),
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
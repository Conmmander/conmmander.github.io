import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seo/seo.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key, required this.label, required this.route, required this.icon, required this.tip});

  final String label;
  final String route;
  final IconData icon;
  final String tip;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Seo.link(
      href: "https://ryandodd.org$route",
      anchor: label,
      child: Tooltip(
        message: tip,
        child: TextButton.icon(
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
        ),
      ),
    );
  }
}
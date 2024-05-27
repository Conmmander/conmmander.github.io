import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
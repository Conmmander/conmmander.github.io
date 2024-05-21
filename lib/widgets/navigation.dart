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

class BackgroundMouseRegion extends StatefulWidget {
  const BackgroundMouseRegion({super.key, required this.page});

  final Widget page;

  @override
  State<BackgroundMouseRegion> createState() => _BackgroundMouseRegionState();
}

class _BackgroundMouseRegionState extends State<BackgroundMouseRegion> {
  
  double x = 1.0;
  double y = 1.0;
  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(x-20, y-20),
          end: Alignment(x, y),
          colors: [
            theme.colorScheme.tertiary,
            theme.colorScheme.secondary,
            theme.colorScheme.primary,
          ]
        ),
      ),
      child: MouseRegion(
        onHover: _updateLocation,
        child: Stack(
          children: [
            widget.page,
            Container(
              transformAlignment: Alignment(x, y),
              width: 10,
              height: 10,
              color: theme.colorScheme.primary
            )
          ]
        )
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
            const NavigationButton(label: "Contact", route: "/contact", icon: Icons.call),
          ]
        ),
      ),
      body: BackgroundMouseRegion(page: page)
    );
  }
}
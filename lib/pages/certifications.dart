import 'package:flutter/material.dart';

class Certifications extends StatelessWidget {
  const Certifications({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        Text("These are various certifications that I have earned. Online or otherwise.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: theme.colorScheme.onPrimary
          )
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Image(
            image: AssetImage('assets/certs/java_basic.png'),
            semanticLabel: 'HackerRank Java_Basic Certificate',
          ),
        ),
      ]
    );
  }
}
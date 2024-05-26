import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({super.key, required this.imgLocation, required this.tooltip, this.certification});

  final String imgLocation;
  final String tooltip;
  final String? certification;

  @override
  Widget build (BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FloatingActionButton.large(
        onPressed: () {
          if (certification != null) {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                backgroundColor: theme.colorScheme.inversePrimary,
                title: Center(child: Text(tooltip)),
                content: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    shape: BoxShape.rectangle
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(certification!)
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          }
        },
        tooltip: tooltip,
        backgroundColor: theme.colorScheme.onSurface,
        hoverColor: certification != null ? theme.colorScheme.primary : theme.colorScheme.onSurface,
        heroTag: tooltip,
        enableFeedback: true,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(imgLocation),
        )
      ),
    );
  }
}

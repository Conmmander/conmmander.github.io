import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceCard extends StatefulWidget {
  const ExperienceCard({super.key, required this.company, required this.title, required this.description, required this.link, required this.companyLogo, required this.dates});

  final String company;
  final String title;
  final String description;
  final String link;
  final String companyLogo;
  final String dates;

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    MediaQueryData queryData = MediaQuery.of(context);

    return SizedBox(
      height: queryData.size.width * 0.07,
      width: queryData.size.width * 0.41,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: GestureDetector(
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              backgroundColor: theme.colorScheme.inversePrimary,
              icon: SizedBox(
                height: queryData.size.width * 0.07,
                width: queryData.size.width * 0.10,
                child: Image.asset(widget.companyLogo)
              ),
              title: Text("${widget.company} | ${widget.title}"),
              content: Text("${widget.dates}\n${widget.description}",
                softWrap: true,
                overflow: TextOverflow.clip
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
          child: Card(
            elevation: isHovered ? 20 : 12,
            color: isHovered ? theme.colorScheme.primary : theme.colorScheme.onSurface,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: queryData.size.width * 0.07,
                      width: queryData.size.width * 0.10,
                      child: Image.asset(widget.companyLogo)
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(widget.title, 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isHovered ? theme.colorScheme.onSecondary : theme.colorScheme.primary
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(widget.description, 
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: isHovered ? theme.colorScheme.onSecondary : theme.colorScheme.primary
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                        ),
                      ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                      icon: const Icon(Icons.link_sharp),
                      onPressed: () {
                        launchUrl(Uri.parse(widget.link),
                        mode: LaunchMode.externalApplication);
                      }
                    ),
                  ),
                ]
              ),
            )
          ),
        ),
      ),
    );
  }
}
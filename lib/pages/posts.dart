import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    MediaQueryData queryData = MediaQuery.of(context);
    bool mobilePlatform = queryData.size.width >= 600 ? false : true;

    if (!mobilePlatform) {
      return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: queryData.size.width * 0.26,
                    ),
                    child: Text("Coming Soon! - This will be an area where I can post project updates and other content!",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: queryData.size.width * 0.01,
                        color: theme.colorScheme.onPrimary
                      )
                    ),
                  ),
                ]
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Coming Soon! - This will be an area where I can post project updates and other content!",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: queryData.size.width * 0.019,
                    color: theme.colorScheme.onPrimary
                  )
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
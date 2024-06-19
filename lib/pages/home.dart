import 'package:flutter/material.dart';
import 'package:seo/seo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    MediaQueryData queryData = MediaQuery.of(context);
    bool mobilePlatform = queryData.size.width >= 600 ? false : true;

    // Implement media queries to adjust the layout for mobile platforms

    if (!mobilePlatform) {
      return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(100.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.shadow,
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: const Offset(0, 0)
                          )
                        ],
                        shape: BoxShape.circle
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset('assets/img/personal/me.jpeg',
                        width: queryData.size.width * 0.20,
                        height: queryData.size.width * 0.20,
                        fit: BoxFit.cover
                      ),
                    ),
                  )
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Programmer\nTech Enthusiast",
                    style: TextStyle(
                      fontSize: queryData.size.width *0.026,
                      color: theme.colorScheme.onPrimary
                    )
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Programmer\nTech Enthusiast",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: queryData.size.width *0.03,
                  color: theme.colorScheme.onPrimary
                )
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.shadow,
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                        offset: const Offset(0, 0)
                      )
                    ],
                    shape: BoxShape.circle
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset('assets/img/personal/me.jpeg',
                    width: queryData.size.width * 0.40,
                    height: queryData.size.width * 0.40,
                    fit: BoxFit.cover
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
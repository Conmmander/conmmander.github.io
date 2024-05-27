import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

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
                    child: Text("I'm a programmer, working on my Bachelor of Science in Computer Science. I've been programming in my free time since at least 2017, gradually learning new skills and tools.\n\nIn addition to my love of programming, I am pursuing a minor in mathematics and music, which aligns with my love of knowledge and my passion for the cello.\n\nWhen I have spare time, you might find me rock climbing, camping, or researching another new programming topic/technique. I'm also heavily involved in Scouting America (formerly the Boy Scouts of America), and owe a lot of my personal development to the organization.\n\nIf you want to talk about any of my skills, experiences, or anything else, feel free to send me a message via one of the links below.",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: queryData.size.width * 0.01,
                        color: theme.colorScheme.onPrimary
                      )
                    ),
                  ),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(queryData.size.width * 0.052,),
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
                      child: Image.asset('assets/img/personal/chicago-me.jpg',
                        width: queryData.size.width * 0.20,
                        height: queryData.size.width * 0.20,
                        fit: BoxFit.cover
                      ),
                    ),
                  )
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
                Padding(
                  padding: EdgeInsets.all(queryData.size.width * 0.052),
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
                    child: Image.asset('assets/img/personal/chicago-me.jpg',
                      width: queryData.size.width * 0.25,
                      height: queryData.size.width * 0.25,
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Text("I'm a programmer, working on my Bachelor of Science in Computer Science. I've been programming in my free time since at least 2017, gradually learning new skills and tools.\n\nIn addition to my love of programming, I am pursuing a minor in mathematics and music, which aligns with my love of knowledge and my passion for the cello.\n\nWhen I have spare time, you might find me rock climbing, camping, or researching another new programming topic/technique. I'm also heavily involved in Scouting America (formerly the Boy Scouts of America), and owe a lot of my personal development to them.\n\nIf you want to talk about any of my skills, experiences, or anything else, feel free to send me a message via one of the links below.",
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
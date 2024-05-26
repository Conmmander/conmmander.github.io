import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 500
                  ),
                  child: Text("I'm a programmer, working on my Bachelor of Science in Computer Science. I've been programming in my free time since at least 2017, gradually learning new skills and tools.\n\nIn addition to my love of programming, I am pursuing a minor in mathematics and music, which aligns with my love of knowledge and my passion for the cello.\n\nWhen I have spare time, you might find me rock climbing, camping, or researching another new programming topic/technique. I'm also heavily involved in Scouting America (formerly the Boy Scouts of America), and owe a lot of my personal development to them.\n\nIf you want to talk about any of my skills, experiences, or anything else, feel free to send me a message via one of the links below.",
                    softWrap: true,
                    style: TextStyle(
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
                    child: Image.asset('assets/img/personal/chicago-me.jpg',
                      width: 400,
                      height: 400,
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
  }
}
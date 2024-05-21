import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            Card(
              shadowColor: theme.colorScheme.shadow,
              color: theme.colorScheme.tertiaryContainer,
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle
                        ),
                        clipBehavior: Clip.hardEdge,
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.all(10),
                        child: const Image(
                          image: AssetImage('assets/img/personal/me.jpeg'),
                          semanticLabel: 'Ryan Dodd',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Education',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onTertiaryContainer
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ]
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Bradley University Class of 2026"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Bachelor of Science in Computer Science"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Minor in Mathematics"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Minor in Music"),
                  ),
                ]
              )
            ),
            Card(
              shadowColor: theme.colorScheme.shadow,
              color: theme.colorScheme.tertiaryContainer,
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Personal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onTertiaryContainer
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("In my free time, I enjoy playing the cello, reading Sci-Fi, playing video games, and programming. I also love the outdoors, and often go camping."),
                  ),
                ]
              )
            ),
            Card(
              shadowColor: theme.colorScheme.shadow,
              color: theme.colorScheme.tertiaryContainer,
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Extra Curriculars',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onTertiaryContainer
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Student Senate Parliamentarian - Present"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Student Senate Campus Affairs Chairperson - 2023"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Bradley ACM Vice President - Present"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Scouting America, Venturing - Present"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Bradley University Rock Climbing Club Member - Present"),
                  ),
                ]
              )
            ),
            Card(
              shadowColor: theme.colorScheme.shadow,
              color: theme.colorScheme.tertiaryContainer,
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Awards',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onTertiaryContainer
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Eagle Scout"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Illinois Seal of Commendation in Spanish"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Order of the Arrow - Vigil Honor"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Order of the Arrow - Founder's Award"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Order of the Arrow - R.D. Dunkin Leadership in Service Award"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("Territory Venturing Leadership Award"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text("3 time Bradley Dean's List Recipient"),
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}
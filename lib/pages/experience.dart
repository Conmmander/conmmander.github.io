import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.company, required this.date, required this.title, required this.description});

  final String company;
  final String date;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Card(
      shadowColor: theme.colorScheme.shadow,
      color: theme.colorScheme.primaryContainer,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(company, 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onPrimaryContainer
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50)
                ),
                Text(date,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Text(title,
              textAlign: TextAlign.left,
            ),
            Text(description,
              textAlign: TextAlign.center
            ),
          ]
        ),
      )
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            ExperienceCard(company: "Bradley University/United States Airforce/University of Dayton Research Institute", date: "February 2024 - Present", title: "Computer Science XR Research Assistant", description: "A description"),
            ExperienceCard(company: "Bradley University", date: "August 2023 - Present", title: "Senior IT Service Desk Consultant", description: "A description"),
            ExperienceCard(company: "Bradley University", date: "April 2023 - August 2023", title: "IT Service Desk Consultant", description: "A description"),
            ExperienceCard(company: "Bradley University Residential Living", date: "August 2023 - Present", title: "Resident Advisor", description: "A description"),
            ExperienceCard(company: "Bradley University Residential Living", date: "January 2023 - August 2023", title: "Assistant Resident Advisor", description: "A description"),
            ExperienceCard(company: "Firchau Construction", date: "May 2022 - August 2022", title: "Contractor", description: "A description"),
            ExperienceCard(company: "Three Fires Council, Scouting America", date: "May 2021 - August 2021", title: "Day Camp Counselor", description: "A description"),
            ExperienceCard(company: "St. Petronille Parish", date: "September 2018 - May 2022", title: "Wednesday Night Assistant", description: "A description"),
          ],
        ),
      ),
    );
  }
}
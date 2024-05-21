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
      color: theme.colorScheme.tertiaryContainer,
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
                const Padding(
                  padding: EdgeInsets.only(right: 50)
                ),
                Text(date,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Text(title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontStyle: FontStyle.italic
              )
            ),
            Text(description,
              textAlign: TextAlign.left
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
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: const <ExperienceCard>[
            ExperienceCard(company: "Bradley University/United States Airforce/University of Dayton Research Institute", date: "February 2024 - Present", title: "Computer Science XR Research Assistant", description: "Worked as a research assistant with extended reality applications for the United States Airforce."),
            ExperienceCard(company: "Bradley University", date: "August 2023 - Present", title: "Senior IT Service Desk Consultant", description: ""),
            ExperienceCard(company: "Bradley University", date: "April 2023 - August 2023", title: "IT Service Desk Consultant", description: "As a Service Desk Consultant at Bradley University since April 2023, I diagnose technical issues on laptops and various devices, provide phone and remote support, manage the SolarWinds ticketing system, and offer assistance through email, while also creating detailed documentation for common issues."),
            ExperienceCard(company: "Bradley University Residential Living", date: "August 2023 - Present", title: "Resident Advisor", description: "As a Resident Advisor at Bradley University since January 2023, I advanced from the role of Assistant Resident Advisor in May 2023, orchestrating weekly floor programs to nurture community among residents, implementing budget management strategies for optimal fund utilization, contributing to weekly security coverage for resident safety, and assisting in the management of StarRez residential software by introducing new features and ensuring seamless operation."),
            ExperienceCard(company: "Bradley University Residential Living", date: "January 2023 - August 2023", title: "Assistant Resident Advisor", description: "As an Assistant Resident Advisor at Bradley University, I autonomously managed a floor for several weeks, coordinated weekly programs to cultivate community among residents, implemented budget management strategies for optimal fund allocation, and contributed to weekly security coverage for resident safety."),
            ExperienceCard(company: "Firchau Construction", date: "May 2022 - August 2022", title: "Contractor", description: "At Firchau Construction, I served as a contractor from May 23, 2022, to August 17, 2022. During this period, my responsibilities included working on Trex deck construction and maintenance from 8 am to 4 pm. I demonstrated proficiency in designing decks using Menards Deck Builder and Simpson Strong-Tie deck planner. Moreover, I actively contributed to the company's promotional efforts by producing impactful video advertisements using Adobe Premiere Pro. In addition to my construction role, I played a key part in illustrating deck plans to aid customer visualization and facilitate the permit acquisition process. Furthermore, I utilized my language skills by interpreting Spanish for effective communication with my boss."),
            ExperienceCard(company: "Three Fires Council, Scouting America", date: "May 2021 - August 2021", title: "Day Camp Counselor", description: "Monday through Thursday, from 8:30 to 5:00, I worked with children in 5th and 6th grade, serving as their counselor. In this role, I managed the students throughout the day, administering first aid when necessary, and providing assistance in teaching to support the instructors. I also procured games for the children, ensuring their hydration and fostering an environment where they respected each other and other staff members."),
            ExperienceCard(company: "St. Petronille Parish", date: "September 2018 - May 2022", title: "Wednesday Night Assistant", description: "Every Wednesday, I dedicated my time from 3:30 to 9:00 to a diverse range of responsibilities. This encompassed tasks such as managing movie sessions, executing mass paper duplication, labeling documents, and organizing them systematically. My role extended to timely door unlocking and locking, playing a crucial part in maintaining the safety and security of the campus environment. Additionally, I actively contributed to the operational efficiency of the educational program by assembling copies of materials for grade-level leads, facilitating their seamless planning for the upcoming week. Moreover, I collaborated closely with grade-level leads, ensuring the smooth execution of their technology-related requirements, including video and slideshow presentations. My multifaceted role involved receiving individuals during class times, emphasizing the importance of maintaining a secure and structured campus environment."),
          ],
        ),
      ),
    );
  }
}
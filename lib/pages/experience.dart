import 'package:flutter/material.dart';

import '../widgets/experience_card.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExperienceCard(company: "Bradley University/University of Dayton Resaerch Institute/U.S. Airforce", dates: "February 2024 - Present", title: "Computer Science XR Research Assistant", description: "●	Created tools and applications for the military utilizing various extended reality devices", link: "https://www.bradley.edu/heres-the-latest/story.dot?id=64f44e96f4c2674394ba8c0a630821e2", companyLogo: "assets/img/experience_logos/airforce-logo.png"),
                  ExperienceCard(company: "St. Petronille Parish", title: "Wednesday Night Assistant", dates: "September 2018 - May 2022", description: "●	Assembled copies of material for grade-level leads, allowing them to plan the next week’s program\n●	Corroborated with grade-level leads on technology, ensuring their video and slideshow presentations went as planned\n●	Received people during class times while also unlocking and locking doors, ensuring the safety of the campus from anyone who should not be there", link: "https://www.stpetschurch.org/", companyLogo: "assets/img/experience_logos/stpets-logo.png"),
                  ExperienceCard(company: "Firchau Construction", title: "Contractor", dates: "May 2023 - August 2023", description: "●	Produced promotional video advertisements to enhance company visibility\n●	Contributed to deck construction, ensuring timely completion\n●	Illustrated detailed deck plans to facilitate customer visualization and permit acquisition\n●	Provided Spanish interpretation support for effective communication with the boss", link: "https://firchauconstructioncwc.com/", companyLogo: "assets/img/experience_logos/firchauconstruction-logo.png"),
                  ExperienceCard(company: "Three Fires Council, BSA", title: "Day Camp Counselor", dates: "May 2021 - August 2021", description: "●	Managed children in grades 5 and 6 for the day\n●	Administered first aid to children who needed it\n●	Aided teaching to children to assist the instructors", link: "https://threefirescouncil.org/", companyLogo: "assets/img/experience_logos/threefires-logo.png"),
                ]
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExperienceCard(company: "Bradley University Residential Living", title: "Resident Advisor", dates: "June 2023 - Present", description: "●	Managed StarRez residential management software, introducing new features through the SQL-like interface, facilitating smooth transitions between semesters, and maintaining confidentiality\n●	Oversaw a Residential Living Initiative aimed to enhance staff engagement and passion", link: "https://www.bradley.edu/campuslife/reslife/", companyLogo: "assets/img/experience_logos/bradley-logo.png"),
                  ExperienceCard(company: "Bradley University Residential Living", title: "Assistant Resident Advisor", dates: "January 2023 - June 2023", description: "●	Managed a floor of 34 residents without a partner, while planning 8 additional programs\n●	Aided in the management of the Student Apartment Complex through office management, security, and posters\n●	Served on summer staff and performed rounds of the campus for security", link: "https://www.bradley.edu/campuslife/reslife/", companyLogo: "assets/img/experience_logos/bradley-logo.png"),
                  ExperienceCard(company: "Bradley University", title: "Senior IT Service Desk Consultant", dates: "January 2024 - Present", description: "●	Recreated Service Desk training for consumption by peers and newly hired staff\n●	Tracked down 50 overdue laptop loans and reduced the overdue list to 5 untracked devices", link: "https://www.bradley.edu/", companyLogo: "assets/img/experience_logos/bradley-logo.png"),
                  ExperienceCard(company: "Bradley University", title: "IT Service Desk Consultant", dates: "May 2023 - January 2024", description: "●	Wrote extensive documentation for a new network registration tool and iPads that rolled out to the campus\n●	Staffed summer orientation sessions, creating connections with first-year students and welcoming them", link: "https://www.bradley.edu/", companyLogo: "assets/img/experience_logos/bradley-logo.png"),
                ]
              ),
            )
          ]
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:portfolio_website/sections/experience/widgets/experience_card.dart';
import 'package:portfolio_website/core/widgets/responsive_layout.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("My Journey", style: poppinsH2),
          SizedBox(height: 35),
          Text("Work Experience", style: poppinsH3),
          SizedBox(height: 10),
          ExperienceCard(
            company: 'Reelist8',
            position: 'Mobile Developer',
            duration: 'June 2025 - Present',
            description:
                'Currently working on the Reelist8 app, focusing on building the mobile application using Flutter.',
          ),
          ExperienceCard(
            company: 'Reelist8',
            position: 'Mobile Developer Intern',
            duration: 'Jan 2025 - June 2025',
            description:
                'Built the initial MVP of Reelist8, including authentication, style quiz, property requirements, homepage, and listing page features.',
          ),
          ExperienceCard(
            company: 'Symph',
            position: 'Project Management Intern',
            duration: 'March 2024 - June 2024',
            description:
                'Worked with private and government clients, supporting marketing, managing projects, ensuring quality, and coordinating teams.',
          ),
          SizedBox(height: 35),
          Text("Involvement", style: poppinsH3),
          SizedBox(height: 10),
          ExperienceCard(
            position: "Core Officer",
            company: "DEVCON Pampanga",
            duration: "Jan 2025 - Present",
            description:
                "Contributed to organizing tech events in Pampanga such as seminars, workshops, talks, and hackathons, helping developers and students reach their full potential.",
          ),
          ExperienceCard(
            company: 'Notion',
            position: 'Notion Campus Lead',
            duration: 'Sep 2024 - Present',
            description:
                'Founded the Notion-HAU program at Holy Angel University, helping students master Notion through support and events that improve their academic workflow. Launched two initiatives promoting Notion’s free education plan for students and Plus plans for student organizations.',
          ),
          ExperienceCard(
            company: 'Google',
            position: 'Google Developer Student Club Lead',
            duration: 'Aug 2023 - June 2024',
            description:
                'Led the Datacamp Donates Scholarship at GDSC-HAU, introduced study jams, organized 13 events, launched club merchandise, and grew membership to 200+.',
          ),
        ],
      ),
      desktopView: Column(
        children: [
          Text("My Journey", style: poppinsH2),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Work Experience", style: poppinsH3),
                  SizedBox(height: 10),
                  ExperienceCard(
                    company: 'Reelist8',
                    position: 'Mobile Developer',
                    duration: 'June 2025 - Present',
                    description:
                        'Currently working on the Reelist8 app, focusing on building the mobile application using Flutter.',
                  ),
                  ExperienceCard(
                    company: 'Reelist8',
                    position: 'Mobile Developer Intern',
                    duration: 'Jan 2025 - June 2025',
                    description:
                        'Built the initial MVP of Reelist8, including authentication, style quiz, property requirements, homepage, and listing page features.',
                  ),
                  ExperienceCard(
                    company: 'Symph',
                    position: 'Project Management Intern',
                    duration: 'March 2024 - June 2024',
                    description:
                        'Worked with private and government clients, supporting marketing, managing projects, ensuring quality, and coordinating teams.',
                  ),
                ],
              ),
              const SizedBox(width: 150),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Involvement", style: poppinsH3),
                  SizedBox(height: 10),
                  ExperienceCard(
                    position: "Core Officer",
                    company: "DEVCON Pampanga",
                    duration: "Jan 2025 - Present",
                    description:
                        "Contributed to organizing tech events in Pampanga such as seminars, workshops, talks, and hackathons, helping developers and students reach their full potential.",
                  ),
                  ExperienceCard(
                    company: 'Notion',
                    position: 'Notion Campus Lead',
                    duration: 'Sep 2024 - Present',
                    description:
                        'Founded the Notion-HAU program at Holy Angel University, helping students master Notion through support and events that improve their academic workflow. Launched two initiatives promoting Notion’s free education plan for students and Plus plans for student organizations.',
                  ),
                  ExperienceCard(
                    company: 'Google',
                    position: 'Google Developer Student Club Lead',
                    duration: 'Aug 2023 - June 2024',
                    description:
                        'Led the Datacamp Donates Scholarship at GDSC-HAU, introduced study jams, organized 13 events, launched club merchandise, and grew membership to 200+.',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

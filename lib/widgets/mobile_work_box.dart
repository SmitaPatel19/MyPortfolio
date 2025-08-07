import 'package:flutter/material.dart';
import 'package:mynewportfolio/widgets/work_custom_data.dart';

class MobileWorkBox extends StatelessWidget {
  const MobileWorkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 60),
          child: WorkCustomData(
            title: "Flutter Developer Intern",
            subTitle:
            "Contributed to a smart AI-powered browser app with features like bookmarks, privacy reports, tab previews, and backend integration. Gained hands-on experience with Flutter, Firebase, API integration, and state management while building advanced UI components.",
            duration: "April 2025 - Present",
            company: "AigetAi Private Limited",
            location: "Work from home",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: WorkCustomData(
            title: "Flutter Developer Intern",
            subTitle:
            "Worked on multiple real-life projects including astrology apps (user & expert), cab booking (user, driver, vendor), and social media features. Managed version control, improved UIs and functions in legacy projects, and integrated Firebase services including Google Auth.",
            duration: "May 2025 - July 2025",
            company: "Miracuves",
            location: "Work from home",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: WorkCustomData(
            title: "App Development Trainee",
            subTitle:
            "Completed a training program covering Flutter, Dart, RESTful APIs. Built modules for a cross-platform e-commerce app while learning advanced concepts like BLoC for state management. Gained practical experience with UI design, API integration, and scalable architecture.",
            duration: "April 2025 - July 2025",
            company: "Reto India",
            location: "Work from home",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: WorkCustomData(
            title: "Flutter + Dart Development Project",
            subTitle:
            "Learned Flutter, Dart, REST APIs, Firebase, state management, and exploring backend services while building a complete mobile app.",
            duration: "Sept - 2023 to Present",
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: WorkCustomData(
            title: "Indian Institute of Information Technology, Vadodara",
            subTitle:
            "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat IIITV",
            duration: "2022 - Present",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: WorkCustomData(
            title:
            "Senior Seconadary Education",
            subTitle:
            "Scored 94.6% in Senior Secondary Eductaion at school Avadh Collegiate.",
            duration: "Oct - 2019 to Nov - 2020",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: WorkCustomData(
            title: "Seconadary Education",
            subTitle:
            "Scored 95.6% in Senior Secondary Eductaion at school Avadh Collegiate.",
            duration: "Sep 2020 - Oct 2020",
          ),
        ),
      ],
    );
  }
}

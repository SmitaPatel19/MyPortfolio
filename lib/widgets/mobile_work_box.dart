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
          padding: const EdgeInsets.only(top: 60),
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

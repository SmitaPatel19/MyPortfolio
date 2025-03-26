import 'package:flutter/material.dart';
import 'package:mynewportfolio/widgets/work_custom_data.dart';

class WorkBox extends StatelessWidget {
  const WorkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Indian Institute of Information Technology, Vadodara",
          subTitle:
          "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat IIITV",
          duration: "2022 - Present",
        ),
        WorkCustomData(
          title: "Flutter + Dart Development Project",
          subTitle:
          "Worked on group project on Expense Tracker App named BudgetBuddy.",
          duration: "Sept - 2023 to Jan - 2024",
        ),
        WorkCustomData(
          title:
          "Senior Seconadary Education",
          subTitle:
          "Scored 94.6% in Senior Secondary Eductaion at school Avadh Collegiate.",
          duration: "Oct - 2019 to Nov - 2020",
        ),
        WorkCustomData(
          title: "Seconadary Education",
          subTitle:
          "Scored 95.6% in Senior Secondary Eductaion at school Avadh Collegiate.",
          duration: "Sep 2020 - Oct 2020",
        ),
      ],
    );
  }
}

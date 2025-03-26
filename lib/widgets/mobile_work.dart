import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mynewportfolio/widgets/work_custom_data.dart';

class MobileWork extends StatefulWidget {
  const MobileWork({super.key});

  @override
  _MobileWorkState createState() => _MobileWorkState();
}

class _MobileWorkState extends State<MobileWork> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.7,
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 1.2,
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        Center(
                          child: VerticalDivider(
                            color: Color(0xff64FFDA),
                            thickness: 1.75,
                            width: 10,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Container(
                          height: size.height * 1.4,
                          child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    child: FaIcon(FontAwesomeIcons.laptopCode,
                                        color: Colors.white),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.brown,
                                    child: FaIcon(FontAwesomeIcons.dev,
                                        color: Colors.white),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.deepOrange,
                                    child: FaIcon(FontAwesomeIcons.mugSaucer,
                                        color: Colors.white),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.deepPurple,
                                    child: FaIcon(FontAwesomeIcons.freeCodeCamp,
                                        color: Colors.white),
                                  ),
                                ],
                              )),
                        )
                      ],
                    )),
              ),

              Expanded(
                  flex: 3,
                  child: Container(
                    height: size.height * 1.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
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
                            title: "Flutter + Dart Development Project",
                            subTitle:
                            "Worked on group project on Expense Tracker App named BudgetBuddy.",
                            duration: "Sept - 2023 to Jan - 2024",
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
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}

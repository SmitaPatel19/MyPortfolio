import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text.dart';
import '../widgets/workbox.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final colors = Theme.of(context).extension<AppColors>()!;

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.45,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "02.",
                textsize: 20.0,
                color: colors.sectionheadingNumColor,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: 12.0),
              CustomText(
                text: "Where I've Worked",
                textsize: 26.0,
                color: colors.sectionheadingColor,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: size.width * 0.01),
              Container(
                width: size.width / 4,
                height: 1.10,
                color: colors.sectionheadinglineColor,
              ),
            ],
          ),
          SizedBox(height: size.height * 0.07),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: size.height * 1.2,
                  child: Stack(
                    children: [
                      Center(
                        child: VerticalDivider(
                          color: colors.techIconColor,
                          thickness: 1.75,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: colors.redColor,
                                child: FaIcon(
                                  FontAwesomeIcons.diagramProject,
                                  color: colors.whiteColor,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: colors.deepOrangeColor,
                                child: FaIcon(
                                  FontAwesomeIcons.code,
                                  color: colors.whiteColor,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: colors.deepPurpleColor,
                                child: FaIcon(
                                  FontAwesomeIcons.codepen,
                                  color: colors.whiteColor,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: colors.brownColor,
                                child: FaIcon(
                                  FontAwesomeIcons.dev,
                                  color: colors.whiteColor,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: colors.redColor,
                                child: FaIcon(
                                  FontAwesomeIcons.laptopCode,
                                  color: colors.whiteColor,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: colors.deepOrangeColor,
                                child: FaIcon(
                                  FontAwesomeIcons.mugSaucer,
                                  color: colors.whiteColor,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: colors.deepPurpleColor,
                                child: FaIcon(
                                  FontAwesomeIcons.freeCodeCamp,
                                  color: colors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(height: size.height * 1.2, child: WorkBox()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

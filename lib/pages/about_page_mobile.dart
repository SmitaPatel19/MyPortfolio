import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text.dart';

class MobileAboutPage extends StatelessWidget {
  const MobileAboutPage({super.key});

  Widget technology(BuildContext context, String text) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: colors.techIconColor.withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.04),
        Container(
          width: MediaQuery.of(context).size.width * 0.36,
          height: 20,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              text,
              style: TextStyle(color: colors.techtextColor, letterSpacing: 1.75),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final colors = Theme.of(context).extension<AppColors>()!;

    return FittedBox(
      fit: BoxFit.cover,
      child: Container(
        width: size.width,
        child: Column(
          children: [
            //About me title
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: "01.",
                  textsize: 20.0,
                  color: colors.sectionheadingNumColor,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(width: 12.0),
                CustomText(
                  text: "About Me",
                  textsize: 26.0,
                  color: colors.sectionheadingColor,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                Container(
                  width: size.width / 4,
                  height: 1.10,
                  color: colors.sectionheadinglineColor,
                ),
              ],
            ),

            SizedBox(height: size.height * 0.07),

            //About me desc
            Wrap(
              children: [
                CustomText(
                  text:
                      "Hello! I’m Smita, a passionate developer and a student at IIITV.\nI love creating things for the web and mobile—whether it’s elegant websites, intuitive applications, or anything in between. My goal is to craft seamless, pixel-perfect experiences that are both beautiful and highly performant.\n",
                  textsize: 16.0,
                  color: colors.smalltextColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.75,
                ),
                CustomText(
                  text:
                      "Currently, I’m pursuing my Bachelor’s degree in Computer Science and Engineering at IIITV. Alongside academics, I spend time working on real-world projects, constantly challenging myself with new ideas and technologies.\nI am always curious to learn more, collaborate with like-minded people, and contribute to impactful products.\n",
                  textsize: 16.0,
                  color: colors.smalltextColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.75,
                ),
                CustomText(
                  text: "Technologies I’ve been working with recently:\n",
                  textsize: 16.0,
                  color: colors.smalltextColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.75,
                ),
              ],
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              width: size.width,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Frontend & Mobile",
                          textsize: 16.0,
                          color: colors.sectionheadingNumColor,
                          letterSpacing: 0.75,
                        ),
                        technology(context, "Dart"),
                        technology(context, "Flutter"),
                        technology(context, "HTML/CSS"),

                        SizedBox(height: 10),
                        CustomText(
                          text: "Core and Programming",
                          textsize: 16.0,
                          color: colors.sectionheadingNumColor,
                          letterSpacing: 0.75,
                        ),
                        technology(context, "Java, C/C++."),
                        technology(context, "Data Structures and Algorithms"),
                        technology(context, "Python"),
                        technology(context, "Machine Learning"),
                      ],
                    ),
                  ),

                  SizedBox(width: size.width * 0.001),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Backend & database",
                              textsize: 16.0,
                              color: colors.sectionheadingNumColor,
                              letterSpacing: 0.75,
                            ),
                            technology(context, "Firebase/Firestore"),
                            technology(context, "NodeJs(learning phase)"),
                            technology(context, "API"),
                            technology(context, "MYSQL"),

                            SizedBox(height: 10),
                            CustomText(
                              text: "Tools",
                              textsize: 16.0,
                              color: colors.sectionheadingNumColor,
                              letterSpacing: 0.75,
                            ),
                            technology(context, "Git - Github"),
                            technology(context, "VS Code/Android Studio"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: size.height * 0.08),
            //Image
            Center(
              child: Container(
                height: size.height * 0.7,
                width: size.width * 0.7,
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      right: 20,
                      left: 50.0,
                      child: Card(
                        color: colors.sectionheadingNumColor,
                        child: Container(
                          margin: EdgeInsets.all(2.75),
                          height: size.height * 0.6,
                          width: size.width * 0.69,
                          color: colors.backgroundColor,
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.6,
                      width: size.width * 0.6,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("images/myprofile.jpeg"),
                      ),
                    ),
                    Container(
                      height: size.height * 0.6,
                      width: size.width * 0.6,
                      color: colors.sectionheadingNumColor.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

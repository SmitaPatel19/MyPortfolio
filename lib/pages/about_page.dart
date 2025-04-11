import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});


  Widget technology(BuildContext context, String text) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: colors.techIconColor.withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        Container(
          width: MediaQuery.of(context).size.width * 0.17,
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
    var size = MediaQuery.of(context).size;
    final colors = Theme.of(context).extension<AppColors>()!;

    return Container(
      height: size.height,
      width: size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width / 2 - 100,
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
                    SizedBox(width: size.width * 0.01),
                    Container(
                      width: size.width / 4.5,
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
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "Currently, I’m pursuing my Bachelor’s degree in Computer Science and Engineering at IIITV. Alongside academics, I spend time working on real-world projects, constantly challenging myself with new ideas and technologies.\nI am always curious to learn more, collaborate with like-minded people, and contribute to impactful products.\n",
                      textsize: 16.0,
                      color: colors.smalltextColor,
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text: "Technologies I’ve been working with recently:\n",
                      textsize: 16.0,
                      color: colors.smalltextColor,
                      // fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                  ],
                ),

                Container(
                  height: size.height * 0.15,
                  width: size.width,
                  child: Wrap(
                    children: [
                      Container(
                        width: size.width * 0.20,
                        height: size.height * 0.30,
                        child: SingleChildScrollView(
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
                              technology(
                                context,
                                "Data Structures and Algorithms",
                              ),
                              technology(context, "Python"),
                              technology(context, "Machine Learning"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.001),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          width: size.width * 0.20,
                          height: size.height * 0.25,
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
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.12,
                    left: size.width * 0.120,
                    child: Card(
                      color: colors.sectionheadingNumColor,
                      child: Container(
                        margin: EdgeInsets.all(2.75),
                        height: size.height / 2,
                        width: size.width / 5,
                        color: colors.backgroundColor,
                      ),
                    ),
                  ),
                  CustomImageAnimation(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  const CustomImageAnimation({super.key});

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Color(0xff61F9D5).withOpacity(0.5);
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    final colors = Theme.of(context).extension<AppColors>()!;
    setState(() {
      customImageColor = colors.sectionheadingNumColor.withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: Colors.black54,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("images/myprofile.jpeg"),
            ),
          ),
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mynewportfolio/pages/about_page_mobile.dart';
import 'package:mynewportfolio/pages/work_page_%20mobile.dart';
import 'package:mynewportfolio/widgets/custom_hover.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../model/methods.dart';
import '../theme/app_theme.dart';
import '../theme/theme_provider.dart';
import '../widgets/custom_text.dart';
import '../widgets/mobile_project.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  late AutoScrollController _scrollController;
  final scrollDirection = Axis.vertical;
  bool _isControllerReady = false;

  @override
  void initState() {
    _scrollController = AutoScrollController(axis: scrollDirection);
    _isControllerReady = true;
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _scrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
    );
    _scrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _scrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<ThemeProvider>(context).isDarkMode;
    final colors = Theme.of(context).extension<AppColors>()!;
    Method method = Method();
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colors.backgroundColor,
      endDrawer: Drawer(
        elevation: 6.0,
        child: Container(
          color: colors.backgroundColor,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: colors.sectionheadingColor),
                currentAccountPicture: CircleAvatar(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("images/myprofilesmall.png"),
                      ),
                    ),
                  ),
                ),
                accountName: CustomText(
                  text: "Smita Patel",
                  textsize: 17,
                  color: colors.backgroundColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4,
                ),
                accountEmail: InkWell(
                  onTap: () async {
                    await method.launchEmail();
                  },
                  child: CustomText(
                    text: "miss.smitapatel04@gmail.com",
                    textsize: 15,
                    color: colors.backgroundColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.4,
                  ),
                ),
              ),
              ListTile(
                title: CustomText(
                  text: "About",
                  color: colors.sectionheadingColor,
                  textsize: 17,
                ),
                leading: Icon(FontAwesomeIcons.user, color: colors.sectionheadingColor),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToIndex(0);
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.briefcase,
                  color: colors.sectionheadingColor,
                ),
                title: CustomText(
                  text: "Experience",
                  color: colors.sectionheadingColor,
                  textsize: 17,
                ),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToIndex(1);
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.code,
                  color: colors.sectionheadingColor,
                ),
                title: CustomText(
                  text: "Projects",
                  color: colors.sectionheadingColor,
                  textsize: 17,
                ),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToIndex(2);
                },
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.envelope,
                  color: colors.sectionheadingColor,
                ),
                title: CustomText(
                  text: "Contact Me",
                  color: colors.sectionheadingColor,
                  textsize: 17,
                ),
                onTap: () {
                  Navigator.pop(context);
                  _scrollToIndex(3);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Card(
                  elevation: 4.0,
                  color: colors.sectionheadingColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(0.85),
                    height: size.height * 0.06,
                    width: size.height * 0.15,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colors.sectionheadingColor,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        method.launchURL(
                          "https://drive.google.com/file/d/134sxdZPaiopZlKmG94e9FqBMp_JeJkcm/view?usp=sharing",
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Resume",
                          style: TextStyle(
                            color: colors.backgroundColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: colors.techIconColor),
        backgroundColor: colors.backgroundColor,
        elevation: 0.0,
        title: IconButton(
          icon: FaIcon(isDark ? FontAwesomeIcons.sun : FontAwesomeIcons.moon),
          onPressed: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: FaIcon(FontAwesomeIcons.bars), // <-- Change icon here
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.08),
              CustomText(
                text: "👋 Hey there, I'm",
                textsize: 16.0,
                color: colors.highliteTextColor,
                letterSpacing: 3.0,
              ),
              SizedBox(height: size.height * 0.02),
              CustomText(
                text: "Smita Patel.",
                textsize: 52.0,
                color: colors.sectionheadingColor,
                fontWeight: FontWeight.w900,
              ),
              SizedBox(height: size.height * 0.04),
              CustomText(
                text:
                    "I design and build mobile and web experiences using Flutter.",
                textsize: 42.0,
                color: colors.sectionheadingColor.withOpacity(0.6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: size.height * 0.04),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  children: [
                    Text(
                      "I'm a third-year student at the prestigious Indian Institute of Information Technology Vadodara, passionate about technology and problem-solving."
                      "\n\n🚀 I am passionate about exploring the latest technologies, and I am currently on the lookout for an internship opportunity "
                      "where I can contribute, learn, and grow."
                      "\n🤝 Open to collaboration and always ready to lend a helping hand. Let's build something incredible together!"
                      "\n\n💡 What drives me? \n 1. A love for learning and building. \n 2. Clean code and meaningful user experiences. \n 3. The thrill of solving real-world problems with technology.",
                      style: TextStyle(
                        color: colors.smalltextColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 0.75,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.06),
              CustomTooltip(
                message: 'Send me an email!',
                top: -70,
                left: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  color: colors.techIconColor,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(0.75),
                    height: 56.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: colors.backgroundColor,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        method.launchEmail();
                      },
                      hoverColor: colors.techIconColor.withOpacity(0.2),
                      child: Text(
                        "Get In Touch",
                        style: TextStyle(
                          color: colors.techIconColor,
                          letterSpacing: 2.75,
                          wordSpacing: 1.0,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.08),

              _isControllerReady
                  ? _wrapScrollTag(index: 0, child: MobileAboutPage())
                  : MobileAboutPage(),

              SizedBox(height: size.height * 0.08),

              //Where I've Worked title
              _wrapScrollTag(index: 1, child: MobileWorkPage()),

              //Some Things I've Built title
              _wrapScrollTag(
                index: 2,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "03.",
                          textsize: 20.0,
                          color: colors.sectionheadingNumColor,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 12.0),
                        CustomText(
                          text: "Some Things I've Built",
                          textsize: 26.0,
                          color: colors.sectionheadingColor,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Container(
                          width: size.width * 0.04,
                          height: 1.10,
                          color: colors.sectionheadinglineColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: size.height * 0.07),

              MobileProject(
                imagePath: "images/whatsapp.jpg",
                ontab: () {
                  method.launchURL(
                    "https://github.com/SmitaPatel19/My_Whatsapp",
                  );
                },
                projectDesc:
                    "A Mobile app for both Android and IOS. Login using your mobile number and view your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design and Firebase services.",
                projectTitle: "WhatsaApp Clone",
                tech1: "Flutter",
                tech2: "Dart",
                tech3: "Firebase",
              ),

              MobileProject(
                imagePath: "images/myAI.jpg",
                ontab: () {
                  method.launchURL("https://github.com/SmitaPatel19/My-AI");
                },
                projectDesc:
                    "A smart Flutter app that uses voice commands to interact with ChatGPT for intelligent replies and DALL·E for AI-generated images. It offers seamless voice recognition, smart conversations, and creative visuals.",
                projectTitle: "My AI",
                tech1: "Dart",
                tech2: "Flutter",
                tech3: "Open AI",
              ),

              MobileProject(
                imagePath: "images/movieapp.jpg",
                ontab: () {
                  method.launchURL("https://github.com/SmitaPatel19/Movie-App");
                },
                projectDesc:
                    "A stylish and responsive Flutter app to explore trending movies, top-rated films, and popular TV shows with search, favorites, and rich media support.",
                projectTitle: "Movie App",
                tech1: "Flutter & Dart",
                tech2: "TMDb API",
                tech3: "Shared Preferences",
              ),

              MobileProject(
                imagePath: "images/myfinance.jpg",
                ontab: () {
                  method.launchURL(
                    "https://github.com/SmitaPatel19/MyFinance_App",
                  );
                },
                projectDesc:
                    "A clean and efficient Flutter app to manage income, expenses, and financial goals. Features include local storage, visual insights, and Firebase login/signup with cloud sync(Firestore).",
                projectTitle: "MyFinance App",
                tech1: "Firebase",
                tech2: "Hive",
                tech3: "Provider",
              ),

              MobileProject(
                imagePath: "images/wallpaperapp.jpg",
                ontab: () {
                  method.launchURL(
                    "https://github.com/SmitaPatel19/Wallpaper_App_API",
                  );
                },
                projectDesc:
                    "A visually rich Flutter Wallpaper application Using Pixel API, to show more than 5k+ images. User can browse, view fullscreen, and apply high-res wallpapers fetched from Pexels API.",
                projectTitle: "Wallpaper App",
                tech1: "Flutter & Dart",
                tech2: "Pexels API",
                tech3: "PhotoView",
              ),

              MobileProject(
                imagePath: "images/bmiapp.jpg",
                ontab: () {
                  method.launchURL(
                    "https://github.com/SmitaPatel19/BMI-App-2nd",
                  );
                },
                projectDesc:
                    "A clean and intuitive Flutter app to calculate, track, and visualize BMI with voice input and dark/light theme support.",
                projectTitle: "BMI Tracker",
                tech1: "Speech-to-Text",
                tech2: "FL Chart",
                tech3: "SharedPreferences",
              ),
              //ff
              MobileProject(
                imagePath: "images/signuplogin.jpg",
                ontab: () {
                  method.launchURL(
                    "https://github.com/SmitaPatel19/login_firebase_auth_database",
                  );
                },
                projectDesc:
                    "A Flutter app demonstrating complete Firebase Authentication and Firestore CRUD functionality with a clean, responsive UI.",
                projectTitle: "Firebase Auth & Firestore Integration",
                tech1: "Flutter & Dart ",
                tech2: "Firebase Auth",
                tech3: "Cloud Firestore",
              ),

              MobileProject(
                imagePath: "images/news_app.gif",
                ontab: () {
                  method.launchURL("https://github.com/SmitaPatel19/NewsApp");
                },
                projectDesc:
                    "A responsive Flutter app that fetches the latest news from a public API, with search, dark mode, pull-to-refresh, and in-app article preview using WebView.",
                projectTitle: "News App",
                tech1: "Flutter & Dart",
                tech2: "Provider",
                tech3: "http & WebView",
              ),

              SizedBox(height: size.height * 0.08),

              //
              // Row(
              //   children: [
              //     Container(
              //       width: size.width * 0.44,
              //       height: size.height * 0.6,
              //       child: Image(image: AssetImage("assets/images/pic120.png")),
              //     ),
              //     Spacer(),
              //     Container(
              //       width: size.width * 0.44,
              //       height: size.height * 0.5,
              //       child: Image(image: AssetImage("assets/images/pic121.png")),
              //     ),
              //   ],
              // ),
              _wrapScrollTag(
                index: 3,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "04. What's Next?",
                          textsize: 16.0,
                          color: colors.highliteTextColor,
                          letterSpacing: 3.0,
                        ),
                        SizedBox(height: 16.0),
                        CustomText(
                          text: "Get In Touch",
                          textsize: 42.0,
                          color: colors.whiteColor,
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(height: size.height * 0.04),
                        Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Text(
                              "Although I'm currently looking for internship opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: colors.smalltextColor,
                                letterSpacing: 0.75,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.07),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTooltip(
                              message: 'Send me an email!',
                              top: -70,
                              left: -20,
                              child: InkWell(
                                onTap: () {
                                  method.launchEmail();
                                },
                                child: Card(
                                  elevation: 4.0,
                                  color: colors.techIconColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(0.85),
                                    height: size.height * 0.10,
                                    width: size.width * 0.30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: colors.backgroundColor,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Text(
                                        "Say Hello",
                                        style: TextStyle(
                                          color: colors.techIconColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 16.0),

                            CustomTooltip(
                              message: 'Call',
                              top: -70,
                              left: -20,
                              child: InkWell(
                                onTap: () {
                                  method.launchCaller();
                                },
                                child: Card(
                                  elevation: 4.0,
                                  color: colors.techIconColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(0.85),
                                    height: size.height * 0.10,
                                    width: size.width * 0.30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: colors.backgroundColor,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Text(
                                        "Call",
                                        style: TextStyle(
                                          color: colors.techIconColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.07),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomTooltip(
                    message: 'Github',
                    top: -25,
                    left: -15,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: colors.whiteColor,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://github.com/SmitaPatel19");
                      },
                    ),
                  ),

                  CustomTooltip(
                    message: 'Leetcode',
                    top: -25,
                    left: -15,
                    child: IconButton(
                      icon: Image.asset(
                        "images/leetcode.png",
                        width: 15,
                        height: 15,
                        color: colors.whiteColor,
                      ),
                      color: colors.whiteColor,
                      iconSize: 15.0,
                      onPressed: () {
                        method.launchURL("https://leetcode.com/SmitaPatel/");
                      },
                    ),
                  ),

                  CustomTooltip(
                    message: 'Codechef',
                    top: -25,
                    left: -15,
                    child: IconButton(
                      icon: Image.asset(
                        "images/codechef.png",
                        width: 15,
                        height: 15,
                        color: colors.whiteColor,
                      ),
                      color: colors.whiteColor,
                      iconSize: 15.0,
                      onPressed: () {
                        method.launchURL(
                          "https://www.codechef.com/users/smitapatel19",
                        );
                      },
                    ),
                  ),

                  CustomTooltip(
                    message: 'LinkedIn',
                    top: -25,
                    left: -15,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: colors.whiteColor,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(
                          "https://www.linkedin.com/in/smita-patel-740162289/",
                        );
                      },
                    ),
                  ),

                  CustomTooltip(
                    message: 'Call',
                    top: -25,
                    left: -15,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.phone,
                        color: colors.whiteColor,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchCaller();
                      },
                    ),
                  ),

                  CustomTooltip(
                    message: 'E-mail',
                    top: -25,
                    left: -15,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.envelope,
                        color: colors.whiteColor,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchEmail();
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.07),

              //Footer
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
                child: Text(
                  "Designed & Built by Smita Patel 💙 Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colors.whiteColor.withOpacity(0.4),
                    letterSpacing: 1.75,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

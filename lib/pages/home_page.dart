import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mynewportfolio/pages/about_page.dart';
import 'package:mynewportfolio/pages/work_page.dart';
import 'package:provider/provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../model/methods.dart';
import '../theme/app_theme.dart';
import '../theme/theme_provider.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/custom_hover.dart';
import '../widgets/custom_text.dart';
import '../widgets/feature_projects.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = Method();
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter:
          () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
      () =>
          _isAppBarExpanded
              ? isExpaned != false
                  ? setState(() {
                    isExpaned = false;
                    // print('setState is called');
                  })
                  : {}
              : isExpaned != true
              ? setState(() {
                // print('setState is called');
                isExpaned = true;
              })
              : {},
    );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
    );
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<ThemeProvider>(context).isDarkMode;
    final colors = Theme.of(context).extension<AppColors>()!;

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        primary: true,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Navigation Bar
            Container(
              height: size.height * 0.14,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: FaIcon(isDark ? FontAwesomeIcons.sun : FontAwesomeIcons.moon),
                      onPressed: () {
                        Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                      },
                    ),

                    Spacer(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DefaultTabController(
                          length: 4,
                          child: TabBar(
                            indicatorColor: Colors.transparent,
                            onTap: (index) async {
                              _scrollToIndex(index);
                            },
                            tabs: [
                              Tab(child: AppBarTitle(text: 'About')),
                              Tab(child: AppBarTitle(text: 'Experience')),
                              Tab(child: AppBarTitle(text: 'Project')),
                              Tab(child: AppBarTitle(text: 'Contact Me')),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Card(
                        elevation: 4.0,
                        color: colors.techIconColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(0.85),
                          height: size.height * 0.07,
                          width: size.height * 0.20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colors.backgroundColor,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: TextButton(
                            onPressed: () {
                              method.launchURL(
                                "https://drive.google.com/file/d/134sxdZPaiopZlKmG94e9FqBMp_JeJkcm/view?usp=sharing",
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                "Resume",
                                style: TextStyle(color: colors.techIconColor),
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

            Row(
              children: [
                //Social Icon
                Container(
                  width: size.width * 0.09,
                  height: size.height - 82,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTooltip(
                        message: 'Github',
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          color: colors.sideIconColor,
                          iconSize: 16.0,
                          onPressed: () {
                            method.launchURL("https://github.com/SmitaPatel19");
                          },
                        ),
                      ),

                      CustomTooltip(
                        message: 'Leetcode',
                        child: IconButton(
                          icon: Image.asset(
                            "images/leetcode.png",
                            width: 16,
                            height: 16,
                            color: colors.sideIconColor,
                          ),
                          color: colors.sideIconColor,
                          iconSize: 16.0,
                          onPressed: () {
                            method.launchURL(
                              "https://leetcode.com/SmitaPatel/",
                            );
                          },
                        ),
                      ),

                      CustomTooltip(
                        message: 'Codechef',
                        child: IconButton(
                          icon: Image.asset(
                            "images/codechef.png",
                            width: 16,
                            height: 16,
                            color: colors.sideIconColor,
                          ),
                          color: colors.sideIconColor,
                          iconSize: 16.0,
                          onPressed: () {
                            method.launchURL(
                              "https://www.codechef.com/users/smitapatel19",
                            );
                          },
                        ),
                      ),
                      CustomTooltip(
                        message: 'LinkedIn',
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.linkedin),
                          color: colors.sideIconColor,
                          onPressed: () {
                            method.launchURL(
                              "https://www.linkedin.com/in/smita-patel-740162289/",
                            );
                          },
                          iconSize: 16.0,
                        ),
                      ),
                      CustomTooltip(
                        message: 'Call',
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.phone),
                          color: colors.sideIconColor,
                          iconSize: 16.0,
                          onPressed: () {
                            method.launchCaller();
                          },
                        ),
                      ),
                      CustomTooltip(
                        message: 'E-mail',
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.envelope),
                          color: colors.sideIconColor,
                          iconSize: 16.0,
                          onPressed: () {
                            method.launchEmail();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: size.height * 0.20,
                          width: 2,
                          color: colors.sideLineColor.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: size.height - 82,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomScrollView(
                        controller: _autoScrollController,
                        slivers: <Widget>[
                          SliverList(
                            delegate: SliverChildListDelegate([
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height * .06),
                                  CustomText(
                                    text: "👋 Hey there, I'm",
                                    textsize: 16.0,
                                    color: colors.highliteTextColor,
                                    letterSpacing: 3.0,
                                  ),
                                  SizedBox(height: 6.0),
                                  CustomText(
                                    text: "Smita Patel.",
                                    textsize: 68.0,
                                    color: colors.sectionheadingColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  SizedBox(height: 4.0),
                                  CustomText(
                                    text:
                                        "I design and build mobile and web experiences using Flutter.",
                                    textsize: 56.0,
                                    color: colors.sectionheadingColor.withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(height: size.height * .04),
                                  Wrap(
                                    children: [
                                      Text(
                                        "I'm a final-year student at the prestigious Indian Institute of Information Technology Vadodara, passionate about technology and problem-solving."
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
                                  SizedBox(height: size.height * .12),

                                  //get in touch text
                                  CustomTooltip(
                                    message: 'Send me an email!',
                                    top: -70,
                                    left: 50,
                                    child: InkWell(
                                      onTap: () {
                                        method.launchEmail();
                                      },
                                      hoverColor: Color(
                                        0xff64FFDA,
                                      ).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4.0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: size.height * 0.09,
                                        width: size.width * 0.14,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: colors.techIconColor,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            4.0,
                                          ),
                                        ),
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

                                  SizedBox(height: size.height * 0.20),
                                ],
                              ),

                              //About Me
                              _wrapScrollTag(index: 0, child: AboutPage()),
                              SizedBox(height: size.height * 0.10),

                              //Where I've Worked
                              _wrapScrollTag(index: 1, child: Work()),
                              SizedBox(height: size.height * 0.10),

                              //Some Things I've Built Main Project
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
                                          text: "Some Projects I've Built",
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
                                    SizedBox(height: size.height * 0.04),
                                    FeatureProject(
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

                                    FeatureProject(
                                      imagePath: "images/myAI.jpg",
                                      ontab: () {
                                        method.launchURL(
                                          "https://github.com/SmitaPatel19/My-AI",
                                        );
                                      },
                                      projectDesc:
                                          "A smart Flutter app that uses voice commands to interact with ChatGPT for intelligent replies and DALL·E for AI-generated images. It offers seamless voice recognition, smart conversations, and creative visuals.",
                                      projectTitle: "My AI",
                                      tech1: "Dart",
                                      tech2: "Flutter",
                                      tech3: "Open AI",
                                    ),

                                    FeatureProject(
                                      imagePath: "images/movieapp.jpg",
                                      ontab: () {
                                        method.launchURL(
                                          "https://github.com/SmitaPatel19/Movie-App",
                                        );
                                      },
                                      projectDesc:
                                          "A stylish and responsive Flutter app to explore trending movies, top-rated films, and popular TV shows with search, favorites, and rich media support.",
                                      projectTitle: "Movie App",
                                      tech1: "Flutter & Dart",
                                      tech2: "TMDb API",
                                      tech3: "Shared Preferences",
                                    ),

                                    FeatureProject(
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

                                    FeatureProject(
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

                                    FeatureProject(
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
                                    FeatureProject(
                                      imagePath: "images/signuplogin.jpg",
                                      ontab: () {
                                        method.launchURL(
                                          "https://github.com/SmitaPatel19/login_firebase_auth_database",
                                        );
                                      },
                                      projectDesc:
                                          "A Flutter app demonstrating complete Firebase Authentication and Firestore CRUD functionality with a clean, responsive UI.",
                                      projectTitle:
                                          "Firebase Auth & Firestore Integration",
                                      tech1: "Flutter & Dart ",
                                      tech2: "Firebase Auth",
                                      tech3: "Cloud Firestore",
                                    ),

                                    FeatureProject(
                                      imagePath: "images/news_app.gif",
                                      ontab: () {
                                        method.launchURL(
                                          "https://github.com/SmitaPatel19/NewsApp",
                                        );
                                      },
                                      projectDesc:
                                          "A responsive Flutter app that fetches the latest news from a public API, with search, dark mode, pull-to-refresh, and in-app article preview using WebView.",
                                      projectTitle: "News App",
                                      tech1: "Flutter & Dart",
                                      tech2: "Provider",
                                      tech3: "http & WebView",
                                    ),

                                    FeatureProject(
                                      imagePath: "images/currencyapp.gif",
                                      ontab: () {
                                        method.launchURL("https://github.com/SmitaPatel19/Currency-Convertor");
                                      },
                                      projectDesc:
                                      "A cross-platform Flutter app to convert currencies in real-time with live exchange rates, offline support, responsive UI, and multi-currency selection.",
                                      projectTitle: "Currency Converter",
                                      tech1: "Flutter & Dart",
                                      tech2: "http",
                                      tech3: "API",
                                    ),

                                    FeatureProject(
                                      imagePath: "images/todoApp.jpg",
                                      ontab: () {
                                        method.launchURL("https://github.com/SmitaPatel19/Todo_App");
                                      },
                                      projectDesc:
                                      "A simple yet powerful Flutter task manager with category filters, priority levels, due dates, swipe-to-delete, and task statistics — all stored locally using SharedPreferences for offline use.",
                                      projectTitle: "Todo App",
                                      tech1: "Flutter",
                                      tech2: "SharedPreferences",
                                      tech3: "Dart",
                                    ),

                                    // MainTiitle(
                                    //   number: "0.4",
                                    //   text: "Other Projects",
                                    // ),
                                    //
                                    // SizedBox(height: size.height * 0.04),
                                    //
                                    // //other Projects
                                    // //if needed more then copy paste this container
                                    // Container(
                                    //   height: size.height * 0.86,
                                    //   width: size.width - 100,
                                    //   child: Column(
                                    //     children: [
                                    //       Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.spaceAround,
                                    //         children: [
                                    //           OSImages(
                                    //             image: "images/pic101.png",
                                    //           ),
                                    //           OSImages(
                                    //             image: "images/pic103.png",
                                    //           ),
                                    //           OSImages(
                                    //             image: "images/pic111.gif",
                                    //           ),
                                    //           OSImages(
                                    //             image: "images/pic113.jfif",
                                    //           ),
                                    //         ],
                                    //       ),
                                    //       SizedBox(height: size.height * 0.04),
                                    //       Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.spaceAround,
                                    //         children: [
                                    //           CustomText(
                                    //             text: "Payment Getway",
                                    //             textsize: 16.0,
                                    //             color: Colors.white.withOpacity(
                                    //               0.4,
                                    //             ),
                                    //             fontWeight: FontWeight.w700,
                                    //             letterSpacing: 1.75,
                                    //           ),
                                    //           CustomText(
                                    //             text: "Chat App",
                                    //             textsize: 16.0,
                                    //             color: Colors.white.withOpacity(
                                    //               0.4,
                                    //             ),
                                    //             fontWeight: FontWeight.w700,
                                    //             letterSpacing: 1.75,
                                    //           ),
                                    //           CustomText(
                                    //             text: "Spotify Clone",
                                    //             textsize: 16.0,
                                    //             color: Colors.white.withOpacity(
                                    //               0.4,
                                    //             ),
                                    //             fontWeight: FontWeight.w700,
                                    //             letterSpacing: 1.75,
                                    //           ),
                                    //           CustomText(
                                    //             text: "TODO App",
                                    //             textsize: 16.0,
                                    //             color: Colors.white.withOpacity(
                                    //               0.4,
                                    //             ),
                                    //             fontWeight: FontWeight.w700,
                                    //             letterSpacing: 1.75,
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),

                              // SizedBox(height: 6.0),

                              //Get In Touch
                              _wrapScrollTag(
                                index: 3,
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.68,
                                      width:
                                          MediaQuery.of(context).size.width -
                                          100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                          SizedBox(height: 16.0),
                                          Wrap(
                                            children: [
                                              Text(
                                                "Although I'm currently looking for internships opportunities, my inbox is \nalways open. Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: colors.smalltextColor,
                                                  letterSpacing: 0.75,
                                                  fontSize: 17.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 32.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            6.0,
                                                          ),
                                                    ),
                                                    child: Container(
                                                      margin: EdgeInsets.all(
                                                        0.85,
                                                      ),
                                                      height:
                                                          size.height * 0.09,
                                                      width: size.width * 0.10,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        color: colors.backgroundColor,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              6.0,
                                                            ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.symmetric(
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
                                                child: InkWell(
                                                  onTap: () {
                                                    method.launchCaller();
                                                  },
                                                  child: Card(
                                                    elevation: 4.0,
                                                    color: colors.techIconColor,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            6.0,
                                                          ),
                                                    ),
                                                    child: Container(
                                                      margin: EdgeInsets.all(
                                                        0.85,
                                                      ),
                                                      height:
                                                          size.height * 0.09,
                                                      width: size.width * 0.10,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        color: colors.backgroundColor,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              6.0,
                                                            ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.symmetric(
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

                                    //Footer
                                    Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height /
                                          6,
                                      width:
                                          MediaQuery.of(context).size.width -
                                          100,
                                      child: Text(
                                        "Designed & Built by Smita Patel 💙 Flutter",
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
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.height - 82,
                  //color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 45,
                        child: Text(
                          "miss.smitapatel04@gmail.com",
                          style: TextStyle(
                            color: colors.sideLineColor.withOpacity(0.6),
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: 100,
                          width: 2,
                          color: colors.sideLineColor.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

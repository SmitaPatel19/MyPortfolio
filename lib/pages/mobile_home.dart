import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/methods.dart';
import '../widgets/custom_text.dart';
import '../widgets/mobile_project.dart';
import '../widgets/mobile_work.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.04),
        Text(
          text,
          style: TextStyle(color: Color(0xff717C99), letterSpacing: 1.75),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0A192F),
      endDrawer: Drawer(
        elevation: 6.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              accountName: Text("Smita Patel"),
              accountEmail: Text("miss.smitapatel04@gmail.com"),
            ),
            ListTile(title: Text("Share"), leading: Icon(Icons.share)),
            ListTile(leading: Icon(Icons.group), title: Text("About")),
            Expanded(child: Text("Version 1.0.1")),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff0A192F),
        elevation: 0.0,
        title: IconButton(
          icon: Icon(
            Icons.change_history,
            size: 32.0,
            color: Color(0xff64FFDA),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.08),
              CustomText(
                text: "Hi, my name is",
                textsize: 16.0,
                color: Color(0xff41FBDA),
                letterSpacing: 3.0,
              ),
              SizedBox(height: size.height * 0.02),
              CustomText(
                text: "Smita Patel.",
                textsize: 52.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w900,
              ),
              SizedBox(height: size.height * 0.04),
              CustomText(
                text: "I build things for the Android and web.",
                textsize: 42.0,
                color: Color(0xffCCD6F6).withOpacity(0.6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: size.height * 0.04),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  children: [
                    Text(
                      "I'm a second-year student at the prestigious Indian Institute of Information Technology Vadodara."
                      " \nMy journey in the world of technology has equipped me with skills in crafting websites, developing applications using Flutter, and navigating the intricacies of APIs."
                      " \n🚀 I am passionate about exploring the latest technologies, and I am currently on the lookout for an internship opportunity "
                      "where I can contribute, learn, and grow.  "
                      "\n💻 Proficient in web development and mobile applications, particularly with Flutter, I am eager to apply my knowledge in a real-world setting."
                      "\n🤝 Open to collaboration and always ready to lend a helping hand. Let's build something incredible together!",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        letterSpacing: 2.75,
                        wordSpacing: 0.75,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.06),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Color(0xff64FFDA),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(0.75),
                  height: 56.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0xff0A192F),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      method.launchEmail();
                    },
                    hoverColor: Colors.green,
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                        color: Color(0xff64FFDA),
                        letterSpacing: 2.75,
                        wordSpacing: 1.0,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.08),

              //About me
              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  width: size.width,
                  //color: Colors.purple,
                  child: Column(
                    children: [
                      //About me title
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "01.",
                            textsize: 20.0,
                            color: Color(0xff61F9D5),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(width: 12.0),
                          CustomText(
                            text: "About Me",
                            textsize: 26.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Container(
                            width: size.width / 4,
                            height: 1.10,
                            color: Color(0xff303C55),
                          ),
                        ],
                      ),

                      SizedBox(height: size.height * 0.07),

                      //About me desc
                      Wrap(
                        children: [
                          CustomText(
                            text:
                                "Hello! I'm Smita, a Student at IIITV.\n\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          CustomText(
                            text:
                                "Shortly currently, I am purshuing my Bachlor's degree in Computter science and Engineering at IIITV, as well as creating projects where I work on a wide variety of interesting and meaningful projects on a daily basis.\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          CustomText(
                            text:
                                "Here are a few technologies I've been working with recently:\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                        ],
                      ),

                      SizedBox(height: size.height * 0.06),

                      Container(
                        width: size.width,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                technology(context, "Dart"),
                                technology(context, "Flutter"),
                                technology(context, "Firebase"),
                                technology(context, "UI/UX"),
                                technology(context, "API"),
                                technology(context, "NodeJs"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                technology(context, "Java, C/C++."),
                                technology(context, "DSA"),
                                technology(context, "MYSQL"),
                                technology(context, "Git - Github"),
                                technology(context, "Python"),
                                technology(context, "Machine Learning"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.08),

              //Image
              Center(
                child: Container(
                  height: size.height * 0.6,
                  width: size.width * 0.7,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        right: 20,
                        left: 50.0,
                        child: Card(
                          color: Color(0xff61F9D5),
                          child: Container(
                            margin: EdgeInsets.all(2.75),
                            height: size.height * 0.45,
                            width: size.width * 0.66,
                            color: Color(0xff0A192F),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/myprofile.jpeg"),
                        ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        color: Color(0xff61F9D5).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),

              //Where I've Worked title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "02.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(width: 12.0),
                  CustomText(
                    text: "Where I've Worked",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                  Container(
                    width: size.width * 0.08,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),

              MobileWork(),
              //Some Things I've Built title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "03.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(width: 12.0),
                  CustomText(
                    text: "Some Things I've Built",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                  Container(
                    width: size.width * 0.04,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/whatsapp.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/myfinance.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/wallpaperapp.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/bmiapp.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/signuplogin.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic6.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic7.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic8.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic10.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic11.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic102.gif"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic104.png"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/movieapp.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/myAI.jpg"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic107.jfif"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic108.jfif"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic109.jfif"),

              SizedBox(height: size.height * 0.07),

              MobileProject(ontab: () {}, image: "assets/images/pic110.jfif"),

              SizedBox(height: size.height * 0.01),

              Row(
                children: [
                  Container(
                    width: size.width * 0.42,
                    height: size.height * 0.6,
                    child: Image(image: AssetImage("assets/images/pic101.png")),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.42,
                    height: size.height * 0.3,
                    child: Image(image: AssetImage("assets/images/pic103.png")),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.01),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(image: AssetImage("assets/images/pic111.gif")),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.5,
                    child: Image(
                      image: AssetImage("assets/images/pic113.jfif"),
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.01),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(image: AssetImage("assets/images/pic114.png")),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.5,
                    child: Image(image: AssetImage("assets/images/pic115.png")),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.01),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("assets/images/pic116.jfif"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.5,
                    child: Image(image: AssetImage("assets/images/pic117.png")),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.01),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("assets/images/pic118.jpeg"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.5,
                    child: Image(
                      image: AssetImage("assets/images/pic119.jpeg"),
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.01),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(image: AssetImage("assets/images/pic120.png")),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.5,
                    child: Image(image: AssetImage("assets/images/pic121.png")),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.01),

              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  //height: size.aspectRatio,
                  width: size.width,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "0.4 What's Next?",
                        textsize: 16.0,
                        color: Color(0xff41FBDA),
                        letterSpacing: 3.0,
                      ),
                      SizedBox(height: 16.0),
                      CustomText(
                        text: "Get In Touch",
                        textsize: 42.0,
                        color: Colors.white,
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
                              color: Colors.white.withOpacity(0.4),
                              letterSpacing: 0.75,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.07),
                      Card(
                        elevation: 4.0,
                        color: Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(0.85),
                          height: size.height * 0.10,
                          width: size.width * 0.30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "Say Hello",
                              style: TextStyle(color: Color(0xff64FFDA)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.07),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL("https://github.com/SmitaPatel19");
                    },
                  ),

                  IconButton(
                    icon: Image.asset(
                      "assets/images/leetcode.png",
                      width: 15,
                      height: 15,
                      color: Colors.white,
                    ),
                    color: Colors.white,
                    iconSize: 15.0,
                    onPressed: () {
                      method.launchURL("https://leetcode.com/SmitaPatel/");
                    },
                  ),

                  IconButton(
                    icon: Image.asset(
                      "assets/images/codechef.png",
                      width: 15,
                      height: 15,
                      color: Colors.white,
                    ),
                    color: Colors.white,
                    iconSize: 15.0,
                    onPressed: () {
                      method.launchURL(
                        "https://www.codechef.com/users/smitapatel19",
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL(
                        "https://www.linkedin.com/in/smita-patel-740162289/",
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.call),
                    color: Color(0xffffA8B2D1),
                    iconSize: 16.0,
                    onPressed: () {
                      method.launchCaller();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.mail, color: Colors.white, size: 15.0),
                    onPressed: () {
                      method.launchEmail();
                    },
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
                    color: Colors.white.withOpacity(0.4),
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

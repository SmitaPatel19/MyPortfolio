import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mynewportfolio/widgets/custom_hover.dart';

import '../theme/app_theme.dart';

class MobileProject extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final VoidCallback? ontab;

  const MobileProject({
    Key? key,
    this.imagePath = "",
    this.ontab,
    this.projectDesc = "",
    this.projectTitle = "",
    this.tech1 = "",
    this.tech2 = "",
    this.tech3 = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).extension<AppColors>()!;

    return Container(
      width: size.width * 0.9,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Project Title
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              projectTitle,
              style: TextStyle(
                fontSize: 24,
                color: colors.sideLineColor,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Image with horizontal scrolling
          Container(
            height: size.height * 0.25,
            decoration: BoxDecoration(
              color: colors.projectDecContColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Image(
                    width: size.width,
                    fit: BoxFit.cover,
                    image: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),

          // Project Description
          Container(
            alignment: Alignment.center,
            height: size.height * 0.16,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            color: colors.projectDecContColor,
            child: Text(
              projectDesc,
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 0.75,
                color: colors.whiteColor.withOpacity(0.4),
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 2),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tech Stack
                Flexible(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 3,
                      runSpacing: 8,
                      children: [
                        if (tech1.isNotEmpty)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: colors.projectDecContColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              tech1,
                              style: TextStyle(
                                fontSize: 14,
                                color: colors.sideLineColor,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        if (tech2.isNotEmpty)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: colors.projectDecContColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              tech2,
                              style: TextStyle(
                                fontSize: 14,
                                color: colors.sideLineColor,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        if (tech3.isNotEmpty)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: colors.projectDecContColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              tech3,
                              style: TextStyle(
                                fontSize: 14,
                                color: colors.sideLineColor,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

                // GitHub Link
                CustomTooltip(
                  message: 'Github Link',
                  child: IconButton(
                    icon: FaIcon(FontAwesomeIcons.github, size: 24),
                    color: colors.whiteColor.withOpacity(0.3),
                    onPressed: ontab,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

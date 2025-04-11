import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mynewportfolio/widgets/custom_hover.dart';

import '../theme/app_theme.dart';

class FeatureProject extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final VoidCallback? ontab;

  FeatureProject({
    this.imagePath = "",
    this.ontab,
    this.projectDesc = "",
    this.projectTitle = "",
    this.tech1 = "",
    this.tech2 = "",
    this.tech3 = "",
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final colors = Theme.of(context).extension<AppColors>()!;

    return Container(
      height: size.height / 0.999,
      width: size.width - 100,
      child: Column(
        children: [
          Container(
            height: size.height - 100,
            width: size.width - 84,
            child: Stack(
              children: [
                Positioned(
                  top: size.height * 0.02,
                  left: 20.0,
                  child: Container(
                    height: size.height * 0.60,
                    width: size.width * 0.5,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height / 6,
                  right: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * 0.18,
                    width: size.width * 0.35,
                    color: colors.projectDecContColor,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            projectDesc,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: colors.whiteColor.withOpacity(0.6),
                              letterSpacing: 0.75,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 16.0,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.10,
                    width: size.width * 0.25,
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      children: [
                        Text(
                          projectTitle,
                          style: TextStyle(
                            fontSize: 27,
                            color: colors.sideLineColor,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.75,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.36,
                  right: 10.0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Text(
                              tech1 == null ? "" : tech1,
                              style: TextStyle(
                                fontSize: 14,
                                color: colors.sideLineColor,
                                letterSpacing: 1.75,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Flexible(
                            child: Text(
                              tech2 == null ? "" : tech2,
                              style: TextStyle(
                                fontSize: 14,
                                color: colors.sideLineColor,
                                letterSpacing: 1.75,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Flexible(
                            child: Text(
                              tech3 == null ? "" : tech3,
                              style: TextStyle(
                                fontSize: 14,
                                color: colors.sideLineColor,
                                letterSpacing: 1.75,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.42,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTooltip(
                          message: 'Github Link',
                          top: -30,
                          left: -10,
                          child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            color: colors.whiteColor.withOpacity(0.5),
                            onPressed: ontab,
                          ),
                        ),
                      ],
                    ),
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

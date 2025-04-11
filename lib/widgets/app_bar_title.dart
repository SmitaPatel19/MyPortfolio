import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AppBarTitle extends StatelessWidget {

  final String text;

  const AppBarTitle({super.key, required this.text,});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0,),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            letterSpacing: 3.0,
            color: colors.sectionheadingColor,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
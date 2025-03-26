import 'package:flutter/material.dart';

class MobileProject extends StatelessWidget {
  final VoidCallback ontab;
  final String image;

  const MobileProject({super.key, required this.ontab, this.image=""});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontab,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.40,
          width: MediaQuery.of(context).size.width*0.9,
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

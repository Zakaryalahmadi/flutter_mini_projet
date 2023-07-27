import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/images_constants.dart';

class CustomBar extends StatefulWidget {
  const CustomBar({super.key});

  @override
  State<CustomBar> createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: 180,
      padding:
          EdgeInsets.symmetric(horizontal: screenSize.width < 1400 ? 100 : 210),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImagePaths.logo,
            fit: BoxFit.cover,
          ),
          IconButton(
            iconSize: 45,
            icon: Image.asset(
              ImagePaths.bar,
              fit: BoxFit.cover,
            ),
            tooltip: 'drawer',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

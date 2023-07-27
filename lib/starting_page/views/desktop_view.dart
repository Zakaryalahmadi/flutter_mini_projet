import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/images_constants.dart';

import '../../utils/data.dart';
import '../../utils/style_constants.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_buttom.dart';
import '../widgets/custom_input.dart';
import '../widgets/item_list_view.dart';
import '../widgets/main_text.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  static const double smallPadding = 100;
  static const double largePadding = 210;
  static const double screenWidthBreakpoint = 1400;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double horizontalPadding =
        screenWidth < screenWidthBreakpoint ? smallPadding : largePadding;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildMainStack(
                context, screenWidth, screenHeight, horizontalPadding),
          ],
        ),
      ),
    );
  }

  Widget buildMainStack(BuildContext context, double screenWidth,
      double screenHeight, double horizontalPadding) {
    return Stack(
      children: [
        buildBackgroundImage(screenWidth, screenHeight),
        const CustomBar(),
        buildMainRow(context, screenWidth, screenHeight, horizontalPadding),
      ],
    );
  }

  Widget buildBackgroundImage(double screenWidth, double screenHeight) {
    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: Image.asset(
        ImagePaths.bg,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildMainRow(BuildContext context, double screenWidth,
      double screenHeight, double horizontalPadding) {
    return Row(
      children: [
        buildLeftColumn(horizontalPadding),
        buildRightColumn(screenHeight),
      ],
    );
  }

  Widget buildLeftColumn(double horizontalPadding) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: buildLeftColumnChildren(),
      ),
    );
  }

  Column buildLeftColumnChildren() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: smallPadding),
        buildTitleText(),
        const SizedBox(height: 30),
        buildDescriptionText(),
        const SizedBox(height: 35),
        const MyCustomInput(title: "Nom et prénom :", hint: 'Jean'),
        const SizedBox(height: 60),
        const MyCustomInput(
          title: "Mon intention :",
          subTitle: "l'intetion, l'objectif de ce Shynlei",
          hint: 'Mon rel',
        ),
      ],
    );
  }

  Widget buildTitleText() {
    return const Text(
      "Pour commencer... ",
      style: StyleConstants.titleTextStyle,
    );
  }

  Widget buildDescriptionText() {
    return const Text(
      "Faire votre Shynleï, jouer avec, c'est l'occasion \n"
      "d'écouter vos rêves, de les partager et de prendre \n"
      "confiance dans votre richesse.",
      style: StyleConstants.descriptionTextStyle,
    );
  }

  Widget buildRightColumn(double screenHeight) {
    return Flexible(
      child: SizedBox(
        height: screenHeight,
        child: Padding(
          padding: const EdgeInsets.only(left: smallPadding),
          child: buildRightColumnChildren(),
        ),
      ),
    );
  }

  Column buildRightColumnChildren() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        const Spacer(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 40),
            child: MainText(),
          ),
        ),
        buildItemsRow(),
        const Spacer(),
        const Center(child: CustomButton()),
        const Spacer(),
      ],
    );
  }

  Widget buildItemsRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: ItemListView(leftItems)),
        Expanded(child: ItemListView(rightItems)),
      ],
    );
  }
}

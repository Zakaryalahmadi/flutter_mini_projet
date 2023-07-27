import 'package:flutter/material.dart';
import '../../utils/data.dart';
import '../models/item_model.dart';
import '../widgets/custom_buttom.dart';
import '../widgets/item_list_view.dart';
import '../widgets/main_text.dart';

class MobileView extends StatelessWidget {
  MobileView({Key? key}) : super(key: key);

  final List<ItemModel> allItems = leftItems + rightItems;

  @override
  Widget build(BuildContext context) {
    allItems.sort((a, b) => int.parse(a.text.split(". ")[0])
        .compareTo(int.parse(b.text.split(". ")[0])));

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: MainText(),
            ),
            ItemListView(allItems),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

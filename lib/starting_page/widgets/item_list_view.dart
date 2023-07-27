import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/item_model.dart';

class ItemListView extends StatelessWidget {
  final List<ItemModel> items;

  const ItemListView(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListTile(
            leading: SvgPicture.asset(items[index].image),
            title: Text(items[index].text),
          ),
        );
      },
    );
  }
}

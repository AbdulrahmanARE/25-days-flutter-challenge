import 'package:flutter/material.dart';
import 'package:hallo_espanol/Item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: Image.asset(
            item.itemImg,
          ),
          title: Text(item.itemSpaWord),
          subtitle: Text(item.itemEngWord),
          trailing: IconButton(
            onPressed: () => item.playSound(),
            icon: Icon(Icons.play_arrow, size: 35),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hallo_espanol/Item_model.dart';
import '../widgets/item_widget.dart';

class ItemScreen extends StatelessWidget {
final List<ItemModel> items;
final String title;
  const ItemScreen({super.key, required this.items, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => ItemWidget(item: items[index]),
      ),
    );
  }
}

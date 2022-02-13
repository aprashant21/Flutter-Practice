import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} clicked");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$" + item.price.toString(),
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.green.shade400,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

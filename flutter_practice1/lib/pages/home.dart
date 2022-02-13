import 'package:flutter/material.dart';
import 'package:flutter_practice1/models/catalog.dart';
import 'package:flutter_practice1/widgets/drawer.dart';
import 'package:flutter_practice1/widgets/item.dart';

class HomePage extends StatelessWidget {
  final String name = "Prashant Adhikari";
  final int age = 22;

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(15, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart Study"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: dummyList[index]);
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}

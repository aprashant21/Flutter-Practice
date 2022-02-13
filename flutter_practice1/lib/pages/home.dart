import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice1/models/catalog.dart';
import 'package:flutter_practice1/widgets/drawer.dart';
import 'package:flutter_practice1/widgets/item.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("res/json/data.json");
    final decodedData = jsonDecode(catalogJson);
    var booksData = decodedData["books"];
    CatalogModel.items =
        List.from(booksData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart Study"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items!=null && CatalogModel.items.isNotEmpty)? ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: CatalogModel.items[index]);
            }): Center(
              child: CircularProgressIndicator(),
            ),
      ),
      drawer: MyDrawer(),
    );
  }
}

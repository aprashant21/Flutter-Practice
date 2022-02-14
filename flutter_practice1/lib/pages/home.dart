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
    // await Future.delayed(Duration(seconds: 2));
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
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Container(
                        child: Text(item.name, style: TextStyle(color: Colors.white),),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                        color: Colors.deepOrange
                        ),
                        ),
                      child: Image.network(item.image),
                      footer: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                        color: Colors.deepOrange
                        ),
                        child: Text("\$"+item.price.toString(), style: TextStyle(color: Colors.white),)),
                      ));
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}

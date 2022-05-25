import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice1/core/store.dart';
import 'package:flutter_practice1/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_practice1/models/catalog.dart';
import '../widgets/home_widgets.dart/catalog_header.dart';
import '../widgets/home_widgets.dart/catalog_list.dart';

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
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: VxBuilder(
          builder:(context,dynamic,status_)=> FloatingActionButton(
            backgroundColor: context.theme.buttonColor,
            onPressed: (() {
              Navigator.pushNamed(context, '/cart');
            }),
            child: Icon(CupertinoIcons.cart,color: Colors.white,),
          ).badge(
            color: Vx.blue500,
            size: 22,
            count: _cart.items.length,
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            )
          ), mutations: {AddMutation,RemoveMutation},
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand()
              ],
            ),
          ),
        ));
  }
}

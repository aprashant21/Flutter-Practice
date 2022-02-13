import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Amir Khan",
        desc: "Amir Khan is a great indian actor.",
        price: 200,
        color: "#33505a",
        image:
            "https://static.abplive.com/wp-content/uploads/2020/05/13042222/Aamir-Khan.jpg?impolicy=abp_cdn&imwidth=720")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

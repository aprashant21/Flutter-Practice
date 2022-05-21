import 'package:flutter_practice1/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;

//singleton class
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  //collection of IDs - Store Ids of each item
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

//remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

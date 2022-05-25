import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_practice1/models/cart.dart';
import '../models/catalog.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}

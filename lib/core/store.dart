import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';
import '../models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel? catelog;
  CartModel? cart;
  MyStore() {
    catelog = CatalogModel();
    cart = CartModel();
    cart!.catelog = catelog!;
  }
}

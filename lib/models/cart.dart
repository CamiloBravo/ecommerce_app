import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';
import 'catalog.dart';

class CartModel {
// Catelog field
  late CatalogModel _catelog;
// Collection of IDs - stores Ids of each item
  final List<int?> _itemIds = [];
  set catelog(CatalogModel newCatelog) {
    _catelog = newCatelog;
  }

//Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catelog.getById(id!)).toList();
// Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<MyStore> {
  final Item? item;
  AddMutation(this.item);
  @override
  perform() {
    store!.cart!._itemIds.add(item!.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart!._itemIds.remove(item.id);
  }
}

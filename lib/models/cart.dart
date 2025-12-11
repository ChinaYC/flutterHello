import 'package:flutter/foundation.dart';
import 'catalog.dart';

class CartModel extends ChangeNotifier {
  late CatalogModel _catalog;
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
    notifyListeners();
  }

  // 将购物车中的物品 ID 映射为实际的物品对象
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // 计算总价
  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // 添加物品到购物车
  void add(Item item) {
    _itemIds.add(item.id);
    notifyListeners();
  }

  // 从购物车移除物品
  void remove(Item item) {
    _itemIds.remove(item.id);
    notifyListeners();
  }
}

// 一个简单的模型，代表商品目录。
class CatalogModel {
  static const List<String> itemNames = [
    '代码坏味道',
    '控制流',
    '解释器',
    '递归',
    '冲刺 (Sprint)',
    '海森堡Bug',
    '面条代码',
    '九头蛇代码',
    '差一错误',
    '作用域',
    '回调函数',
    '闭包',
    '自动机',
    '位移',
    '柯里化',
  ];

  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  Item getByPosition(int position) {
    return getById(position);
  }
}

class Item {
  final int id;
  final String name;
  final int price = 42;

  Item(this.id, this.name);

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}

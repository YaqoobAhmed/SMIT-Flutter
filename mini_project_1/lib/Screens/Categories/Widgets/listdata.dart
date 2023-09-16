class Itemdata {
  String itemdata;
  bool isSelected;
  Itemdata({required this.itemdata, this.isSelected = false});
}

class Product {
  final String title;
  final num price;

  Product({
    required this.title,
    required this.price,
  });
}

int favDataIndex = 0;
List<Map<String, dynamic>> favData = [{}];

List<Map<String, dynamic>> cartData = [{}];

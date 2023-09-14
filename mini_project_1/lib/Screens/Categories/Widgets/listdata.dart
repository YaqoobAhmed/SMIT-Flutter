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

List<Map<String, dynamic>> favData = [{}];

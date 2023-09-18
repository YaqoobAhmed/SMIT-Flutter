import 'package:flutter/material.dart';

class CartBox extends StatelessWidget {
  final String image, title;
  final int count;
  final num price;
  final Function()? onPressed_remove;
  final Function()? onPressed_add;

  CartBox({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.count,
    this.onPressed_remove,
    this.onPressed_add,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60,
        height: 50,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
      title: Text(title),
      subtitle: Text("\$ ${(price * count).toStringAsFixed(2)}"),
      trailing: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 1,
        children: [
          IconButton(
              onPressed: onPressed_remove,
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey.shade300.withOpacity(0.6),
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                  size: 20,
                ),
              )),
          Text(
            count.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "Manrope",
              fontSize: 18,
            ),
          ),
          IconButton(
              onPressed: onPressed_add,
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey.shade300.withOpacity(0.6),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 20,
                ),
              )),
        ],
      ),
    );
  }
}

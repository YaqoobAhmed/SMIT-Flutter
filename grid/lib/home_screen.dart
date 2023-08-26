import 'package:flutter/material.dart';
import 'image_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<Map<String, dynamic>> car = [
  {
    "company": "Toyatta",
    "name": "Supra",
    "color": "Red",
    "image":
        "https://e0.pxfuel.com/wallpapers/275/877/desktop-wallpaper-red-toyota-supra-speed-test-red-supra.jpg"
  },
  {
    "company": "Toyatta",
    "name": "Corolla",
    "color": "White",
    "image":
        "https://thumbs.dreamstime.com/b/side-turkey-january-white-toyota-corolla-side-turkey-january-white-toyota-corolla-parked-street-warm-day-270915753.jpg"
  },
  {
    "company": "Nisaan",
    "name": "GTR",
    "color": "Blue",
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/2020_Toyota_GR_Supra_%28United_States%29.png/800px-2020_Toyota_GR_Supra_%28United_States%29.png"
  },
];
TextEditingController carController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: GridView.builder(
          itemCount: car.length,
          padding: EdgeInsets.all(7),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GridTile(
                child: InkWell(
              onTap: Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageScreen(index: index),
                  )),
              child: Container(
                color: Colors.amberAccent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(car[index]["image"]),
                    SizedBox(height: 10),
                    Text(
                      car[index]["name"],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ));
          },
        ),
      ),
    );
  }
}

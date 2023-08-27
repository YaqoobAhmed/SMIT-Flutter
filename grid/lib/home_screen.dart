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
    "details":
        "The Toyota Supra (Japanese: トヨタ・スープラ, Hepburn: Toyota Sūpura) is a sports car and grand tourer manufactured by the Toyota Motor Corporation beginning in 1978. The name supra is derived from the Latin prefix, meaning above, to surpass or go beyond.[3] The initial four generations of the Supra were produced from 1978 to 2002. The fifth generation has been produced since March 2019 and went on sale in May 2019.[4] The styling of the original Supra was derived from the Toyota Celica, but it was both longer and wider.[5] Starting in mid-1986, the A70 Supra became a separate model from the Celica. In turn, Toyota also stopped using the prefix Celica and named the car Supra.[6] Owing to the similarity and past of the Celica's name, it is frequently mistaken for the Supra, and vice versa. The first, second and third generations of the Supra were assembled at the Tahara plant in Tahara, Aichi, while the fourth generation was assembled at the Motomachi plant in Toyota City. The 5th generation of the Supra is assembled alongside the G29 BMW Z4 in Graz, Austria by Magna Steyr. The Supra traces much of its roots back to the 2000GT owing to an inline-6 layout. The first three generations were offered with a direct descendant to the Crown's and 2000GT's M engine. Interior aspects were also similar, as was the chassis code A. Along with this name, Toyota also included its own logo for the Supra. It was derived from the original Celica logo, being blue instead of orange. This logo was used until January 1986, when the A70 Supra was introduced. The new logo was similar in size, with orange writing on a red background, but without the dragon design. That logo, in turn, was on Supras until 1991 when Toyota switched to its current oval company logo. The dragon logo was a Celica logo regardless of what colour it was. It appeared on the first two generations of the Supra because they were officially Toyota Celicas. The dragon logo was used for the Celica line until it was also discontinued.[citation needed] In 1998, Toyota ceased sales of the fourth generation of the Supra in the United States.[6] Production of the fourth generation of the Supra for worldwide markets ended in 2002. In January 2019, the fifth generation of the Supra, which was co-developed with the G29 Z4, was introduced.[7]",
    "name": "Supra",
    "color": "Red",
    "image":
        "https://e0.pxfuel.com/wallpapers/275/877/desktop-wallpaper-red-toyota-supra-speed-test-red-supra.jpg"
  },
  {
    "company": "Toyatta",
    "details":
        "The Toyota Corolla (Japanese: トヨタ・カローラ, Hepburn: Toyota Karōra) is a series of compact cars (formerly subcompact) manufactured and marketed globally by the Japanese automaker Toyota Motor Corporation. Introduced in 1966, the Corolla was the best-selling car worldwide by 1974 and has been one of the best-selling cars in the world since then. In 1997, the Corolla became the best-selling nameplate in the world, surpassing the Volkswagen Beetle.[1] Toyota reached the milestone of 50 million Corollas sold over twelve generations in 2021.[2] The name Corolla is part of Toyota's naming tradition of using names derived from the Toyota Crown for sedans, with corolla Latin for small crown.[3] The Corolla has always been exclusive in Japan to Toyota Corolla Store locations, and manufactured in Japan with a twin, called the Toyota Sprinter until 2000. From 2006 to 2018 in Japan and much of the world, and from 2018 to 2020 in Taiwan, the hatchback companion had been called the Toyota Auris. Early models were mostly rear-wheel drive, while later models have been front-wheel drive. Four-wheel drive versions have also been produced, and it has undergone several major redesigns. The Corolla's traditional competitors have been the Nissan Sunny, introduced the same year as the Corolla in Japan and the later Nissan Sentra, Nissan Sylphy, Honda Civic and Mitsubishi Lancer. The Corolla's chassis designation code is E, as described in Toyota's chassis and engine codes. Production locations",
    "name": "Corolla",
    "color": "White",
    "image":
        "https://thumbs.dreamstime.com/b/side-turkey-january-white-toyota-corolla-side-turkey-january-white-toyota-corolla-parked-street-warm-day-270915753.jpg"
  },
  {
    "company": "Nisaan",
    "details":
        "The Nissan GT-R (Japanese: 日産・GT-R, Nissan GT-R), is a sports car and grand tourer produced by Nissan, unveiled in 2007.[4][5][6] It is the successor to the Nissan Skyline GT-R, a high-performance variant of the Nissan Skyline. Although this model was the sixth-generation to bear the GT-R name, it is no longer part of the Skyline line-up. The GT-R is built on the PM platform, which is derived from the FM platform used in the Skyline and the Nissan Z models. After more than six years of development, the production version of the GT-R was unveiled at the 2007 Tokyo Motor Show and featured the VR38DETT engine and other new technologies. The overall body is made out of steel, aluminium and other materials such as carbon-fibre. The GT-R was sold worldwide, unlike its predecessors which were only sold in a limited number of markets.[7] The GT-R has had several facelifts, updates and special editions throughout the years. The GT-R was praised and received various accolades by automotive publications for its performance and practicality at a relatively-low price. It is one of the fastest production cars in the market. It has also competed in various motorsports.",
    "name": "GTR",
    "color": "Blue",
    "image":
        "https://visor.ph/wp-content/uploads/2022/12/The-Nissan-GT-R-is-an-icon-that-will-never-be-forgotten-15.jpg"
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
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: GridTile(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(index: index),
                      ));
                },
                child: Container(
                  color: Colors.amberAccent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(car[index]["image"]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            car[index]["color"],
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            car[index]["company"],
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            car[index]["name"],
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width * .98,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/house.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white38,
                        radius: 20,
                        child: Icon(
                          Icons.bookmark_remove_outlined,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 2,
                  child: Container(
                    height: 170,
                    width: 330,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Sunny Home",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text("Los Angeles California")
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$290",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "/per day",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "4.3",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              features(
                                text: '4 Bedroom',
                                icon: Icons.bed,
                              ),
                              features(
                                text: '2 Bathroom',
                                icon: Icons.bathtub_outlined,
                              ),
                              features(
                                text: '2 Balcony',
                                icon: Icons.balcony_outlined,
                              ),
                              features(
                                text: '1000 mm',
                                icon: Icons.train_outlined,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  children: [
                    Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28.0, vertical: 5),
                child: Text(
                  "Come and look at this 4 bedroom and 3 bath ranch with full basement. Home also features living room on main level,eat in kitchen and all three bedrooms.Super cut layout..Basment has unfinished laundry room with tons of storage and partially finished rec room on other side also on with pontainal office lots of potential and great location.walking distance to down town Crown point square ",
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 2 + 140,
                child: ElevatedButton(
                  style: flatButtonStyle,
                  onPressed: () {},
                  child: Text(
                    "Take a Tour",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class features extends StatelessWidget {
  const features({Key? key, required this.icon, required this.text})
      : super(key: key);
  final String text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Icon(
              icon,
              color: Colors.green[600],
              size: 28,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(text)
      ],
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

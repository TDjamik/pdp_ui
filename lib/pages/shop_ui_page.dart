import 'package:flutter/material.dart';

class ShopUi extends StatefulWidget {
  static const id = "/shop_ui_page";

  const ShopUi({Key? key}) : super(key: key);

  @override
  State<ShopUi> createState() => _ShopUiState();
}

class _ShopUiState extends State<ShopUi> {
  final List<String> _listItem = [
    "assets/images/img_apple.jpeg",
    "assets/images/img_apple1.jpeg",
    "assets/images/img_apple3.jpg",
    "assets/images/img_apple2.png",
    "assets/images/img_apple4.jpeg",
    "assets/images/img_apple1.jpeg",
    "assets/images/img_apple3.jpg",
    "assets/images/img_apple2.png",
    "assets/images/img_apple4.jpeg",
    "assets/images/img_apple.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          title: const Text("Apple Products"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Container(
                  width: 36,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text("7"),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                // #header
                Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/image_shop_3.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.01),
                      ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Lifestyle sale",
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              "Shop Now",
                              style: TextStyle(color: Colors.grey[900]),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // GridView
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children:
                    _listItem.map((item) => cellOfList(item)).toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(
              Icons.star_border,
              color: Colors.yellow,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: camel_case_types

void main() {
  runApp(MyApp());
}
import 'package:flutter/material.dart';

class danhmuc extends StatelessWidget {
  const danhmuc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
          ),
          title: const Text('Keells'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_active_outlined))
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('All Categories',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text('View All'),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildCircularCard('actress.png', 'Household'),
                              _buildCircularCard('electronics.png', 'Grocery'),
                              _buildCircularCard('furniture.png', 'Liquor'),
                              _buildCircularCard('macbook.png', 'chilled'),
                            ],
                          ),
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Nexus Member Deals',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text('View All'),
                            Icon(Icons.navigate_next)
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 130,
                  child: Row(
                    children: [
                      Expanded(
                          child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildSquareCard('jewelry.png', 'Ginger', '690.00'),
                          _buildSquareCard(
                              'shirt.png', 'Grarlic Premium', '380.00'),
                          _buildSquareCard(
                              'smartphone.png', 'Red Onions', '260.00'),
                          _buildSquareCard(
                              'sneakers.png', 'Sneaker Giày', '900.00'),
                        ],
                      )),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Keells Deals',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text('View All'),
                            Icon(Icons.navigate_next)
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 130,
                  child: Row(
                    children: [
                      Expanded(
                          child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildSquareCard('jewelry.png', 'Ginger', '690.00'),
                          _buildSquareCard(
                              'shirt.png', 'Grarlic Premium', '380.00'),
                          _buildSquareCard(
                              'smartphone.png', 'Red Onions', '260.00'),
                          _buildSquareCard(
                              'sneakers.png', 'Sneaker Giày', '900.00'),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.storefront_sharp), label: 'Store'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel), label: 'My Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: 'More'),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  Widget _buildCircularCard(String imgPath, String iconName) {
    return SizedBox(
        width: 90,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
              child: Card(
                  shape: const CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/$imgPath'),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  iconName,
                  style: const TextStyle(fontSize: 12),
                ),
                const Icon(
                  Icons.navigate_next,
                  size: 12,
                )
              ],
            )
          ],
        ));
  }

  Widget _buildSquareCard(String imgPath, String iconName, String coat) {
    return SizedBox(
        width: 100,
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: Card(
                  child: Stack(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset('images/$imgPath'),
                        ),
                      ),
                      const SizedBox(
                          height: 20,
                          width: 30,
                          child: Card(
                              color: Colors.grey,
                              child: Center(
                                child: Text(
                                  '1KG',
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.white),
                                ),
                              ))),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: IconButton(
                            icon: const Icon(
                              Icons.favorite_border,
                              size: 20,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Text(
              iconName,
              style: const TextStyle(fontSize: 10),
            ),
            Text(
              'Rs.$coat',
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'items.dart';
import 'package:e_com/dummy.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String valueChoose;
  List listItem = [
    "Brand",
    "Price",
    "Rating",
    "Color",
  ];
  int _selectedIndex = 0;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffEDEDED),
        appBar: AppBar(
          backgroundColor: Color(0xffEDEDED),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.navigate_before,
              color: Colors.black,
              size: 35.0,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
          ],
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'X',
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(width: 2.0),
              Text(
                'E',
                style: TextStyle(
                  color: Color(0xffABE2F6),
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Items(
                      itemName: 'Sneakers',
                      itemLink:
                          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1619487269-tr3mmst080-shoe-angle-global-mens-tree-runner-mist-white-b11537e4-5c45-4443-a1dd-c70c31779715-png-1619487255.jpg?crop=1xw:1xh;center,top&resize=480:*',
                    ),
                    Items(
                      itemName: 'Watch',
                      itemLink:
                          'https://m.media-amazon.com/images/S/aplus-media/sota/f6a7b43d-d1f4-4dc3-a463-f120050ca9cf.__CR0,0,1500,1500_PT0_SX300_V1___.jpg',
                    ),
                    Items(
                      itemName: 'Backpack',
                      itemLink:
                          'https://cdn1.static-tgdp.com/ui/productimages/approved/std.lang.all/62/99/696299_sized_1800x1200_rev_1.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Our Product',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Domine'),
                      ),
                      DropdownButton(
                        hint: Text('Sort By'),
                        value: valueChoose,
                        onChanged: (newValue) {
                          setState(
                            () {
                              valueChoose = newValue;
                            },
                          );
                        },
                        items: listItem.map((valueItem) {
                          return DropdownMenuItem(
                            child: Text(valueItem),
                            value: valueItem,
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 4.6,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15),
                    itemCount: products.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext ctx, index) {
                      return ReusableCard(
                        discount: products[index].discount,
                        shoeImage: products[index].shoeImage,
                        shoeName: products[index].shoeName,
                        favorite: products[index].favorite,
                        price: products[index].price,
                        stars: products[index].stars,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 28,
          currentIndex: _selectedIndex,
          onTap: _onTapped,
          selectedItemColor: Colors.indigo[900],
          unselectedItemColor: Colors.blueGrey[300],
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.ballot,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_important_sharp),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

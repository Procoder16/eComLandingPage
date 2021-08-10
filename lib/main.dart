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
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
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
                              setState(() {
                                valueChoose = newValue;
                              });
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
                  ),
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
                  SizedBox(height: 15.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    // Column(
                    //   children: [
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         ReusableCard(
                    //           discount: 30,
                    //           favorite: Colors.grey,
                    //           shoeImage:
                    //               'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1619487269-tr3mmst080-shoe-angle-global-mens-tree-runner-mist-white-b11537e4-5c45-4443-a1dd-c70c31779715-png-1619487255.jpg?crop=1xw:1xh;center,top&resize=480:*',
                    //           shoeName: 'Nike Air Max 20',
                    //           price: 240,
                    //           stars: 3.5,
                    //         ),
                    //         ReusableCard(
                    //           discount: 10,
                    //           favorite: Colors.pinkAccent,
                    //           shoeImage:
                    //               'https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1617994517472-JHJRHEI85WBTG5G6B4BY/ethical-shoe-brands-for-every-occasion-allbirds',
                    //           shoeName: 'Excee Sneakers',
                    //           price: 260,
                    //           stars: 3.0,
                    //         ),
                    //       ],
                    //     ),
                    //     SizedBox(height: 15.0),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         ReusableCard(
                    //           discount: 15,
                    //           favorite: Colors.grey,
                    //           shoeImage:
                    //               'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e8235295-8782-4c5e-a173-a090fb8b19a7/react-miler-2-mens-road-running-shoes-3PDZdP.png',
                    //           shoeName: 'Air Max Motion 2',
                    //           price: 290,
                    //           stars: 4.3,
                    //         ),
                    //         ReusableCard(
                    //           discount: 50,
                    //           favorite: Colors.grey,
                    //           shoeImage:
                    //               'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1552300753.68979007.jpg',
                    //           shoeName: 'Leather Sneakers',
                    //           price: 270,
                    //           stars: 3.9,
                    //         ),
                    //       ],
                    //     ),
                    //     SizedBox(height: 15.0),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         ReusableCard(
                    //           discount: 5,
                    //           favorite: Colors.pinkAccent,
                    //           shoeImage:
                    //               'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/3e365a00-b218-4af7-9989-a1932ab48df6/zoomx-vaporfly-next-2-mens-racing-shoes-C0Z7Hg.png',
                    //           shoeName: 'Nike Jordan SE',
                    //           price: 300,
                    //           stars: 4.6,
                    //         ),
                    //         ReusableCard(
                    //           discount: 20,
                    //           favorite: Colors.pinkAccent,
                    //           shoeImage:
                    //               'https://us.ecco.com/dw/image/v2/BCNL_PRD/on/demandware.static/-/Sites-ecco/default/dw7567a723/productimages/203123-01592-outside.jpg?sw=600&sh=600&sm=fit&q=75g',
                    //           shoeName: 'Skechers Basket',
                    //           price: 265,
                    //           stars: 3.8,
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: products.length,
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

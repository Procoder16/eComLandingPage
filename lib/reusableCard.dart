import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.discount,
      this.favorite,
      this.shoeImage,
      this.shoeName,
      this.price,
      this.stars});

  final int discount;
  final Color favorite;
  final String shoeImage;
  final String shoeName;
  final int price;
  final double stars;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.5),
                      color: Color(0xffABE2F6),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.5),
                      // child: discount,
                      child: Text(
                        discount.toString() + "%",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Icon(
                    Icons.favorite,
                    color: favorite,
                  ),
                ],
              ),
              Container(
                height: 150,
                width: 150,
                child: Image(
                  image: NetworkImage(shoeImage),
                ),
              ),
              Text(
                shoeName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.indigo[900],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "\$" + price.toString(),
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 15.0,
                    initialRating: stars,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    stars.toString(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Items({@required this.itemName, this.itemLink});

  final String itemName;
  final String itemLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 2.0), //(x,y)
            blurRadius: 10.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          children: [
            Container(
              height: 35.0,
              width: 35.0,
              child: Image(
                image: NetworkImage(
                  itemLink,
                ),
              ),
            ),
            SizedBox(width: 5.0),
            Text(
              itemName,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

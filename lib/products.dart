import 'package:flutter/material.dart';

class Products {
  int discount;
  Color favorite;
  String shoeImage;
  String shoeName;
  int price;
  double stars;

  Products(int d, Color f, String sLink, String sName, int p, double s) {
    discount = d;
    favorite = f;
    shoeImage = sLink;
    shoeName = sName;
    price = p;
    stars = s;
  }
}

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xffFF735C);
const kSecondaryColor = Color(0xffFFF4F2);

TextStyle buildTextStyle({
  double size,
  FontWeight weight,
  Color color,
  String family,
}) {
  return TextStyle(
    fontSize: size ?? 15,
    fontWeight: weight ?? FontWeight.normal,
    color: color ?? kPrimaryColor,
    fontFamily: family ?? 'Quicksand',
  );
}

const Map<String, String> CAROUSEL = {
  "Your Story of the Day!": "carousel-1.jpg",
  "Better informed today!": "carousel-2.png",
  "Search, Explore, Discover": "carousel-3.jpg",
};

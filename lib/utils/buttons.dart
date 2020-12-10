import 'package:flutter/material.dart';
import 'package:journal_app/export.dart';

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({
    Key key,
    this.title,
    this.onPressed,
    this.style,
    this.color,
  }) : super(key: key);
  final String title;
  final Function onPressed;
  final TextStyle style;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(vertical: 10),
      elevation: 0,
      onPressed: onPressed ?? () {},
      child: Text(
        title,
        style: style ??
            buildTextStyle(
              color: Colors.white,
              size: 18,
              weight: FontWeight.bold,
            ),
      ),
      color: color ?? kPrimaryColor,
      shape: StadiumBorder(),
    );
  }
}

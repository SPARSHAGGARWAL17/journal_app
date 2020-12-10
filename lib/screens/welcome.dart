import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:journal_app/export.dart';

class WelcomePage extends StatefulWidget {
  static const Route = '/welcome';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Journal',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        pageSnapping: true,
                        height: 460,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentPage = index;
                          });
                        },
                        autoPlayAnimationDuration: Duration(milliseconds: 1500),
                        viewportFraction: 1,
                      ),
                      items: [
                        for (var i in CAROUSEL.keys.toList())
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                i,
                                style: buildTextStyle(
                                  size: 25,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Image.asset(
                                'assets/${CAROUSEL[i]}',
                                height: 340,
                                // cacheHeight: 340,
                                width: 340,
                                // cacheWidth: 340,
                              ),
                            ],
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < 3; i++)
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 7,
                                backgroundColor: currentPage == i
                                    ? kPrimaryColor
                                    : kSecondaryColor,
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                      ],
                    )
                  ],
                ),
                color: Colors.white,
              ).expandFlex(6),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomRaisedButton(
                      title: 'Get Started',
                    ),
                    CustomRaisedButton(
                      title: 'Login',
                      style: buildTextStyle(
                        color: kPrimaryColor,
                        size: 18,
                        weight: FontWeight.bold,
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
              ).expandFlex(2)
            ],
          ),
        ),
      ),
    );
  }
}

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

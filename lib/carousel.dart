import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Mycarousel extends StatefulWidget {
  const Mycarousel({super.key});

  @override
  State<Mycarousel> createState() => _MycarouselState();
}

class _MycarouselState extends State<Mycarousel> {
  List<Image> carouselItems = [
    Image.asset("assets/canada.jpg"),
    Image.asset("assets/delhi.jpeg"),
    Image.asset("assets/newyork.jpeg")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Other widgets
          CarouselSlider(
            items: carouselItems,
            options: CarouselOptions(
              height: 50, // Customize the height of the carousel
              autoPlay: true, // Enable auto-play
              enlargeCenterPage: true, // Increase the size of the center item
              enableInfiniteScroll: true, // Enable infinite scroll
              onPageChanged: (index, reason) {
                // Optional callback when the page changes
                // You can use it to update any additional UI components
              },
            ),
          ),
          // Other widgets
        ],
      ),
    );
  }
}
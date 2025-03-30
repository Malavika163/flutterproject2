import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarouselPage extends StatefulWidget {
  const MyCarouselPage({super.key});

  @override
  State<MyCarouselPage> createState() => _MyCarouselPageState();
}

class _MyCarouselPageState extends State<MyCarouselPage> {
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
          
          Center(
            child: CarouselSlider(
              items: carouselItems,
              options: CarouselOptions(
                height: 500, 
                autoPlay: true,
                enlargeCenterPage: true, 
                enableInfiniteScroll: true, 
                reverse: true,
                onPageChanged: (index, reason) {
                
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
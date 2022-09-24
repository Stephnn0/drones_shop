import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({Key? key}) : super(key: key);

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _current = 0;

  final List<String> images = [
    'assets/images/casa.jpg',
    'assets/images/res.jpg',
    'assets/images/panecillo.jpg',
    'assets/images/lui.jpg',
  ];

  final List<String> sentences = ['', '', '', ''];

  List<Widget> generateImagesTiles() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(top: 100),
      child: Stack(children: [
        CarouselSlider(
          items: generateImagesTiles(),
          options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 18 / 8,
              autoPlayInterval: const Duration(seconds: 3),
              onPageChanged: (index, other) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        AspectRatio(
          aspectRatio: 18 / 8,
          child: Center(
              child: Text(
            sentences[_current],
            style: const TextStyle(fontSize: 50, color: Colors.white),
          )),
        )
      ]),
    );
  }
}

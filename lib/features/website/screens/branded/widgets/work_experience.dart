import 'package:flutter/material.dart';

class WorkExperience extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;

  const WorkExperience(
      {Key? key,
      required this.image1,
      required this.image2,
      required this.image3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image1))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image2))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image3))),
          ),
        ),
      ],
    );
  }
}

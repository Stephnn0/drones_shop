import 'package:drone_website/features/website/screens/branded/data/image_data.dart';
import 'package:drone_website/features/website/screens/branded/widgets/image_cart.dart';
import 'package:flutter/material.dart';

class MultipleContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final Color colordescription;
  final IconData icon;
  final String title;
  final String description;
  final Color iconcolor;
  final Color titlecolor;

  const MultipleContainer(
      {Key? key,
      required this.titlecolor,
      required this.iconcolor,
      required this.icon,
      required this.description,
      required this.title,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.colordescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color1,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Icon(
              icon,
              color: iconcolor,
              size: 80,
            ),
          ),
          Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.w100, color: titlecolor),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: color2,
            height: 300,
            child: ListView.builder(
                itemCount: imageList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ImageCart(
                    imageData: imageList[index],
                  );
                }),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            color: color3,
            height: 300,
            child: ListView.builder(
                itemCount: imageList1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ImageCart(
                    imageData: imageList1[index],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 50),
            child: Center(
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: 20, color: colordescription),
                      text: description)),
            ),
          ),
        ],
      ),
    );
  }
}

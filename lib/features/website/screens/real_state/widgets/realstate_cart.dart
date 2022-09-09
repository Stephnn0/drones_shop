import 'package:drone_website/common/custom_textbutton.dart';
import 'package:flutter/material.dart';

class RealStateCart extends StatelessWidget {
  final String text;
  String image;
  String description;
  final VoidCallback onTap;

  RealStateCart(
      {Key? key,
      required this.text,
      required this.image,
      required this.description,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.grey.shade700, width: 2.0),
          //color: Colors.grey.shade500,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 500,
            height: 299,
            child: Image(image: AssetImage(image)),
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
              text: TextSpan(
                  text: description,
                  style: TextStyle(color: Colors.grey.shade700))),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8),
                // borderRadius: BorderRadius.circular(8),
                color: Colors.black,
              ),
              child: Center(
                  child: Text(
                'Learn more about it',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

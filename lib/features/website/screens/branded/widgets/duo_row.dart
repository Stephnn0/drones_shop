import 'package:drone_website/features/website/screens/branded/widgets/single_cart.dart';
import 'package:flutter/material.dart';

class DuoRowWidget extends StatelessWidget {
  const DuoRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 600,
                  height: 500,
                  child: Image(
                      fit: BoxFit.cover, image: AssetImage('images/tre.jpg'))),
              SingleCart()
            ],
          ),
        ],
      ),
    );
  }
}

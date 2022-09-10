import 'package:flutter/material.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.shopping_cart_checkout_outlined,
                  size: 60,
                  color: Colors.grey.shade700,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Store',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text('Learn more',
                    style: TextStyle(color: Colors.grey.shade700)),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.payment_outlined,
                  size: 60,
                  color: Colors.grey.shade700,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Support',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text('Learn more',
                    style: TextStyle(color: Colors.grey.shade700)),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.camera_alt_outlined,
                  size: 60,
                  color: Colors.grey.shade700,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Learn more',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

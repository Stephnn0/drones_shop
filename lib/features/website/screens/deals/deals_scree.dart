import 'package:drone_website/features/website/screens/branded/data/image_data.dart';
import 'package:drone_website/features/website/screens/branded/widgets/image_cart.dart';
import 'package:flutter/material.dart';

class DealsScreen extends StatelessWidget {
  static const String routeName = '/deals';
  const DealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
          //  SingleChildScrollView(
          //   child:
          GridView.builder(
        itemCount: imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) => ImageCart(
          imageData: imageList[index],
        ),
      ),

      //     Column(
      //   children: [
      //     SizedBox(
      //       height: 500,
      //     ),

      //     FeaturesWidget(),
      //     FooterWidget()
      //   ],
      // ),
      // ),
    );
  }
}

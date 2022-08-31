import 'package:drone_website/features/website/screens/branded/data/image_data.dart';
import 'package:drone_website/features/website/screens/branded/widgets/image_cart.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:flutter/material.dart';

class SocialMediaScreen extends StatelessWidget {
  static const String routeName = '/socialmedia';

  const SocialMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            height: 70,
            width: 80,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('images/nav.png'))),
          ),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.grey.shade900,
        ),
        backgroundColor: Colors.grey.shade400,
        body: Center(
          child: Container(
            width: 750,
            child: ListView.builder(
                itemCount: imageList.length,
                //scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ImageCart(
                    imageData: imageList[index],
                  );
                }),
          ),
        )

        //  SingleChildScrollView(
        //     child: Column(
        //   children: [
        //     const SizedBox(
        //       height: 500,
        //     ),
        //     FeaturesWidget(),
        //     FooterWidget()
        //   ],
        // )),
        );
  }
}

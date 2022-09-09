import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ComingUpScreen extends StatelessWidget {
  ComingUpScreen({Key? key}) : super(key: key);
  final List<String> images = [
    'assets/images/pitayaja.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.black,
      //     leading: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 50,
      //         width: 50,
      //         decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage('images/youtub(1).png'))),
      //       ),
      //     ),
      //     title: Container(
      //       height: 25,
      //       decoration: BoxDecoration(
      //         // color: Colors.grey.shade300,
      //         color: Colors.white,
      //         // Colors.grey.shade300,

      //         borderRadius: BorderRadius.circular(5),
      //       ),
      //       child: AnimatedTextKit(
      //           totalRepeatCount: 1,
      //           repeatForever: false,
      //           animatedTexts: [
      //             TypewriterAnimatedText(
      //                 '               CONTACT US              EXCLUSIVE AERIAL MEDIA SERVICES               786 315 7771                PITAJAYADRONES@GMAIL.COM                  MIAMI | ECUADOR         ',
      //                 textStyle: TextStyle(
      //                     color: Colors.black,
      //                     fontSize: 20,
      //                     fontWeight: FontWeight.bold)),
      //           ]),
      //     ),
      //     actions: [
      //       Container(
      //         height: 90,
      //         width: 90,
      //         decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage('images/vegeta(2).png'))),
      //       ),
      //     ]),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.construction,
              color: Colors.white,
              size: 80,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'COMING UP SOON!!',
              style: TextStyle(color: Colors.white, fontSize: 70),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 700,
              width: 700,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(images[0]))),
            ),
          ],
        )),
      ),
    );
  }
}

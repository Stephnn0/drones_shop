import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Image2Stack extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  final List<String> images = [
    'assets/images/cop.png',
  ];
  Image2Stack(
      {Key? key,
      required this.image,
      required this.subtitle,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        ///////
        fit: StackFit.loose,
        children: [
          Center(
            child: Image(image: AssetImage(image)),
          ),
          Row(
            children: [
              const Expanded(
                  child: SizedBox(
                width: 10,
              )),
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  // Container(
                  //   height: 60,
                  //   width: 2,
                  //   color: Colors.black,
                  // ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'SUBSCRIBRE TO:  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(images[0]),
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 609,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8)),
                        child: RichText(
                          text: TextSpan(
                            text: ' DRONE PRODUCTIONS',
                            style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize: 70,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'VIDEO/PHOTOGRAPHY SERVICES',
                    style: GoogleFonts.abel(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                              child: Text(
                            'PLANS',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                            child: Text(
                          'SUBSCRIBE',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
              const Expanded(
                  child: SizedBox(
                width: 10,
              )),
            ],
          ),
        ]);
  }
}

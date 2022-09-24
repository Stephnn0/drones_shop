import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Image3Stack extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const Image3Stack(
      {Key? key,
      required this.image,
      required this.subtitle,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        ///////
        fit: StackFit.loose,
        children: [
          Center(
            child: Image(image: AssetImage(image)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                  child: SizedBox(
                width: 10,
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 2,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'WELCOME TO ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   width: 720,
                  //   height: 90,
                  //   decoration: BoxDecoration(
                  //       color: Colors.black,
                  //       border: Border.all(color: Colors.white, width: 2),
                  //       borderRadius: BorderRadius.circular(8)),
                  //   child:
                  RichText(
                    text: TextSpan(
                      text: ' PITAJAYA DRONE STUDIOS ',
                      style: GoogleFonts.averiaSansLibre(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //   ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'VIDEO/PHOTOGRAPHY SERVICES',
                    style: GoogleFonts.abel(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 2,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                        child: Text(
                      'CONTACT US',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
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

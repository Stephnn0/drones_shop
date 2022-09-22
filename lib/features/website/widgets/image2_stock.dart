import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Image2Stack extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const Image2Stack(
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
          // Row(
          //   children: [
          //     Expanded(
          //         child: SizedBox(
          //       width: 10,
          //     )),
          //     Column(
          //       children: [
          //         SizedBox(
          //           height: 50,
          //         ),
          //         Container(
          //           height: 60,
          //           width: 2,
          //           color: Colors.black,
          //         ),
          //         const SizedBox(
          //           height: 15,
          //         ),
          //         Text(
          //           'WELCOME TO ',
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontSize: 25,
          //               fontWeight: FontWeight.bold),
          //         ),
          //         const SizedBox(
          //           height: 15,
          //         ),
          //         Container(
          //           width: 720,
          //           height: 90,
          //           decoration: BoxDecoration(
          //               color: Colors.black,
          //               border: Border.all(color: Colors.black, width: 2),
          //               borderRadius: BorderRadius.circular(8)),
          //           child: RichText(
          //             text: TextSpan(
          //               text: ' PITAJAYA DRONE STUDIOS ',
          //               style: GoogleFonts.abel(
          //                   color: Colors.white,
          //                   fontSize: 70,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 15,
          //         ),
          //         Text(
          //           'VIDEO/PHOTOGRAPHY SERVICES',
          //           style: GoogleFonts.abel(
          //               color: Colors.black,
          //               fontSize: 35,
          //               fontWeight: FontWeight.bold),
          //         ),
          //         Container(
          //           height: 40,
          //           width: 2,
          //           color: Colors.black,
          //         ),
          //         const SizedBox(
          //           height: 10,
          //         ),
          //         Container(
          //           height: 40,
          //           width: 150,
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               border: Border.all(color: Colors.black, width: 2),
          //               borderRadius: BorderRadius.circular(8)),
          //           child: const Center(
          //               child: Text(
          //             'CONTACT US',
          //             style: TextStyle(
          //                 color: Colors.black,
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 15),
          //           )),
          //         ),
          //       ],
          //     ),
          //     Expanded(
          //         child: SizedBox(
          //       width: 10,
          //     )),
          //   ],
          // ),

          //  ),
        ]
        // ),
        );
  }
}

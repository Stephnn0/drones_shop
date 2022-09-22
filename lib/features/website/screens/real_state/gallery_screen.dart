import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/image_stack.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/realstate_cart.dart';
import 'package:drone_website/features/website/screens/home/widgets/scroll_view_body.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GalleryScreen extends StatelessWidget {
  static const String routeName = '/realstate';

  GalleryScreen({Key? key}) : super(key: key);
  ///////////////////////////////////////////////////////////////////////////////////////////////////real state page

  final List<String> images = [
    'assets/images/youtub(1).png',
    'assets/images/isss(1).png',
    'assets/images/casa.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       height: 50,
      //       width: 50,
      //       decoration: BoxDecoration(
      //           image: DecorationImage(image: AssetImage(images[0]))),
      //     ),
      //   ),

      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 50,
      //         width: 50,
      //         decoration: BoxDecoration(
      //             image: DecorationImage(image: AssetImage(images[1]))),
      //       ),
      //     ),
      //   ],
      //   title: Container(
      //     height: 25,
      //     decoration: BoxDecoration(
      //       // color: Colors.grey.shade300,
      //       color: Colors.white,
      //       // Colors.grey.shade300,

      //       borderRadius: BorderRadius.circular(5),
      //     ),
      //     child: AnimatedTextKit(
      //         totalRepeatCount: 1,
      //         repeatForever: false,
      //         animatedTexts: [
      //           TypewriterAnimatedText(
      //               '         GET IN TOUCH           SOCIAL MEDIA OR CONTACT INFORMATION               786 315 7771                PITAJAYADRONES@GMAIL.COM                  MIAMI | ECUADOR         ',
      //               textStyle: const TextStyle(
      //                   color: Colors.black,
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold)),
      //         ]),
      //   ),

      //   //  const Text('PITAJAYA DRONE STUDIOS'),
      //   automaticallyImplyLeading: true,
      //   backgroundColor: Colors.black,
      // ),
      backgroundColor: Colors.black,
      // Colors.grey.shade200,
      ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageStack(
            image: images[2],
            title: "REAL ESTATE",
            subtitle: "VIDEO-DRONE PRODUCTIONS",
          ),
          BioText(
            text:
                'Video marketing for real estate is a highly relevant marketing asset when selling property. The benefits include offering a virtual tour that is captured on your smartphone, an overall look at the property that is shot on a drone, or a detailed look as a slideshow. Videos are a great way to showcase your property and every detail about it in a way that photos cannot do.',
            color: Colors.grey.shade700,
          ),
          const SizedBox(
            height: 10,
          ),
          const MultipleContainer(
            titlecolor: Colors.white,
            iconcolor: Colors.white,
            icon: Icons.home,
            description:
                'Our real estate video production team brings luxury properties to life with the highest-quality HD digital videos edited for web, mobile, social media and more. We use only the latest pro digital cinema technology, stabilization tools and exciting editing techniques to create video content that can seduce luxury-minded audiences and elevate your distance-selling chances. ',
            title: 'REAL ESTATE PHOTOGRAPHY',
            color1: Colors.black,
            color2: Colors.black,
            color3: Colors.black,
            colordescription: Colors.white,
          ),
          // const MultipleContainer(
          //   titlecolor: Colors.black,
          //   iconcolor: Colors.black,
          //   icon: Icons.construction,
          //   description:
          //       'Video marketing has become a vital part of any business sector in the last decade and has become highly popular in real estate. As a result, websites with video content are seeing an increase in search results, which is why their properties are getting sold quickly.',
          //   title: 'PRODUCTIONS',
          //   color1: Colors.white,
          //   color2: Colors.white,
          //   color3: Colors.white,
          //   colordescription: Colors.black,
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          const SizedBox(
            height: 10,
          ),
          const MultipleContainer(
            titlecolor: Colors.black,
            iconcolor: Colors.black,
            icon: Icons.subscriptions_outlined,
            description:
                'Our creative team of real estate listing video makers serve owners and brokers of residential and commercial properties and bring expertise to every dimension of real estate video production. We look for the sweet spot where creative success meets cost-efficiency to give you the best product you can afford. This can range from a single-cam walkthrough to an immersive, scripted film complete with actors, 3D effects, motion graphics, original music and multi-cam real estate photography.',
            title: 'COMMERCIAL AND BUSINESS VIRTUAL TOURS',
            color1: Colors.white,
            color2: Colors.white,
            color3: Colors.white,
            colordescription: Colors.black,
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            color: Colors.grey.shade200,
            child: Center(
                child: Text(
              "MIAMI'S LEADING REAL STATE PHOTOGRAPHY STUDIO! ",
              style: GoogleFonts.abel(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Padding(
            //
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: SizedBox(
              height: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RealStateCart(
                    text: 'REAL ESTATE PHOTOGRAPHY MIAMI',
                    image: 'images/casa.jpg',
                    description:
                        'High resolution photos from our team of professional photographers',
                    onTap: () {},
                  ),
                  RealStateCart(
                    text: 'SINGLE PROPERTY SITE',
                    image: 'images/cassa.jpg',
                    description:
                        'High resolution photos from our team of professional photographers',
                    onTap: () {},
                  ),
                  RealStateCart(
                    text: '3D TOURS/MATTERPORT MIAMI',
                    image: 'images/3dt.jpg',
                    description:
                        'High resolution photos from our team of professional photographers',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
          //   child: SizedBox(
          //     height: 500,
          //     child: ListView(
          //       scrollDirection: Axis.horizontal,
          //       children: [
          //         RealStateCart(
          //           text: 'AERIAL DRONE PHOTOGRAPHY & VIDEOS',
          //           image: 'images/casa.jpg',
          //           description:
          //               'High resolution photos from our team of professional photographers',
          //           onTap: () {},
          //         ),
          //         RealStateCart(
          //           text: 'WALK-THROUGH VIDEO PRODUCTIONS',
          //           image: 'images/casa.jpg',
          //           description:
          //               'High resolution photos from our team of professional photographers',
          //           onTap: () {},
          //         ),
          //         RealStateCart(
          //           text: 'COMMERCIAL & BUSINESS VIRTUAL TOURS',
          //           image: 'images/casa.jpg',
          //           description:
          //               'High resolution photos from our team of professional photographers',
          //           onTap: () {},
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
          //   child: Container(
          //     height: 500,
          //     child: ListView(
          //       scrollDirection: Axis.horizontal,
          //       children: [
          //         RealStateCart(
          //           text: 'TWILIGHT PHOTOGRAHY',
          //           image: 'images/casa.jpg',
          //           description:
          //               'High resolution photos from our team of professional photographers',
          //           onTap: () {},
          //         ),
          //         RealStateCart(
          //           text: '2D FLOOR PLANS',
          //           image: 'images/florplan.jpg',
          //           description:
          //               'High resolution photos from our team of professional photographers',
          //           onTap: () {},
          //         ),
          //         RealStateCart(
          //           text: 'VIRTUAL STAGING',
          //           image: 'images/casa.jpg',
          //           description:
          //               'High resolution photos from our team of professional photographers, ',
          //           onTap: () {},
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 100,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40)),
            child: Center(
                child: Text(
              "CONTACT US! ",
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(
            height: 60,
          ),
          const ContactWidget(),
          const SizedBox(
            height: 100,
          ),
          Container(
            height: 5,
            color: Colors.grey.shade500,
          ),
          // const ScrollViewBody(),
          // const FeaturesWidget(),
          const FooterWidget()
        ],
      )),
    );
  }
}

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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(images[0]))),
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(images[1]))),
            ),
          ),
        ],
        title: Container(
          height: 25,
          decoration: BoxDecoration(
            // color: Colors.grey.shade300,
            color: Colors.white,
            // Colors.grey.shade300,

            borderRadius: BorderRadius.circular(5),
          ),
          child: AnimatedTextKit(
              totalRepeatCount: 1,
              repeatForever: false,
              animatedTexts: [
                TypewriterAnimatedText(
                    '         GET IN TOUCH           SOCIAL MEDIA OR CONTACT INFORMATION               786 315 7771                PITAJAYADRONES@GMAIL.COM                  MIAMI | ECUADOR         ',
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ]),
        ),

        //  const Text('PITAJAYA DRONE STUDIOS'),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
      ),
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
            subtitle: "PHOTOGRAPHY PRODUCTIONS",
          ),
          BioText(
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
                'Enterprise Photography provides expertise in all areas of architectural photography and has worked with many industry professionals including international construction groups, renowned architects, property developers, luxury property realtors, landscape designers and residential owners. EP has also been featured in online and print publications showcasing beautiful feats of architecture and design.',
            title: 'ARCHITECTURE',
            color1: Colors.black,
            color2: Colors.black,
            color3: Colors.black,
            colordescription: Colors.white,
          ),
          const MultipleContainer(
            titlecolor: Colors.black,
            iconcolor: Colors.black,
            icon: Icons.construction,
            description:
                'Enterprise Photography provides expertise in all areas of architectural photography and has worked with many industry professionals including international construction groups, renowned architects, property developers, luxury property realtors, landscape designers and residential owners. EP has also been featured in online and print publications showcasing beautiful feats of architecture and design.',
            title: 'ARCHITECTURE',
            color1: Colors.white,
            color2: Colors.white,
            color3: Colors.white,
            colordescription: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          const MultipleContainer(
            titlecolor: Colors.white,
            iconcolor: Colors.white,
            icon: Icons.home,
            description:
                'Enterprise Photography provides expertise in all areas of architectural photography and has worked with many industry professionals including international construction groups, renowned architects, property developers, luxury property realtors, landscape designers and residential owners. EP has also been featured in online and print publications showcasing beautiful feats of architecture and design.',
            title: 'ARCHITECTURE',
            color1: Colors.black,
            color2: Colors.black,
            color3: Colors.black,
            colordescription: Colors.white,
          ),
          const MultipleContainer(
            titlecolor: Colors.black,
            iconcolor: Colors.black,
            icon: Icons.construction,
            description:
                'Enterprise Photography provides expertise in all areas of architectural photography and has worked with many industry professionals including international construction groups, renowned architects, property developers, luxury property realtors, landscape designers and residential owners. EP has also been featured in online and print publications showcasing beautiful feats of architecture and design.',
            title: 'ARCHITECTURE',
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
            child: const Center(
                child: Text(
              "MIAMI'S LEADING REAL STATE PHOTOGRAPHY STUDIO! ",
              style: TextStyle(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: SizedBox(
              height: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RealStateCart(
                    text: 'AERIAL DRONE PHOTOGRAPHY & VIDEOS',
                    image: 'images/casa.jpg',
                    description:
                        'High resolution photos from our team of professional photographers',
                    onTap: () {},
                  ),
                  RealStateCart(
                    text: 'WALK-THROUGH VIDEO PRODUCTIONS',
                    image: 'images/casa.jpg',
                    description:
                        'High resolution photos from our team of professional photographers',
                    onTap: () {},
                  ),
                  RealStateCart(
                    text: 'COMMERCIAL & BUSINESS VIRTUAL TOURS',
                    image: 'images/casa.jpg',
                    description:
                        'High resolution photos from our team of professional photographers',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: Container(
              height: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RealStateCart(
                    text: 'TWILIGHT PHOTOGRAHY',
                    image: 'images/casa.jpg',
                    description:
                        'High resolution photos from our team of professional photographers',
                    onTap: () {},
                  ),
                  RealStateCart(
                    text: '2D FLOOR PLANS',
                    image: 'images/florplan.jpg',
                    description:
                        'High resolution photos from our team of professional photographers',
                    onTap: () {},
                  ),
                  RealStateCart(
                    text: 'VIRTUAL STAGING',
                    image: 'images/casa.jpg',
                    description:
                        'High resolution photos from our team of professional photographers, ',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 100,
            color: Colors.grey.shade200,
            child: const Center(
                child: Text(
              "CONTACT US! ",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
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
          const ScrollViewBody(),
          const FeaturesWidget(),
          const FooterWidget()
        ],
      )),
    );
  }
}

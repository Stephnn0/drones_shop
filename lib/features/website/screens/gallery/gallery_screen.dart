import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/duo_row.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/footer/widgets/carousel_slider.dart';
import 'package:drone_website/features/website/screens/gallery/widgets/image_stack.dart';
import 'package:drone_website/features/website/screens/gallery/widgets/realstate_cart.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  static const String routeName = '/realstate';

  const GalleryScreen({Key? key}) : super(key: key);
  ///////////////////////////////////////////////////////////////////////////////////////////////////real state page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('images/pitayaja.png'))),
          ),
        ],
        title: Text('PITAJAYA DRONE STUDIOS'),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey.shade200,
      ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ImageStack(),
          BioText(),
          SizedBox(
            height: 10,
          ),
          MultipleContainer(
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
          MultipleContainer(
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
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          MultipleContainer(
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
          MultipleContainer(
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
          SizedBox(
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
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: Container(
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
            child: Container(
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
            height: 30,
          ),
          const SizedBox(
            height: 30,
          ),
          FeaturesWidget(),
          FooterWidget()
        ],
      )),
    );
  }
}

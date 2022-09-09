import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/branded/widgets/work_experience.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/image_stack.dart';
import 'package:flutter/material.dart';

class BrandedContent extends StatelessWidget {
  BrandedContent({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/images/res.jpg',
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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/youtub(1).png'))),
            ),
          ),
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
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ]),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/isss(1).png'))),
              ),
            ),
          ],
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        body: SingleChildScrollView(
          child: Column(
            children: [
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              // Center(
              //   child: Container(
              //       width: double.infinity,
              //       child: const Image(
              //           fit: BoxFit.cover,
              //           image: AssetImage('images/res.jpg'))),
              // ),
              ImageStack(
                  image: images[0],
                  subtitle: " REAL TIME PROJECT PRODUCTIONS",
                  title: "BRANDED CONTENT"),
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              ///////////////////////////////////////////////////////////////////////////////////////////////////////
              const BioText(
                color: Colors.black,
              ),
              /////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              //////////////////////////////////////////////////////////////////////////////////////////////////////
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
                colordescription: Colors.grey.shade700,
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////
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
              /////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              /////////////////////////////////////////////////////////////////////////////////////////////////////
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
              /////////////////////////////////////////////////////////////////////////////////////////////////////
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
              /////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 20,
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////

              const Center(
                  child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey,
                size: 60,
              )),
              const Text(
                'SPACES CAPTURED',
                style: TextStyle(fontSize: 40, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),

              Container(
                width: 700,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade500, width: 2.0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    WorkExperience(
                      image1: 'images/fox.png',
                      image2: 'images/disney.png',
                      image3: 'images/telemundo.png',
                    ),
                    WorkExperience(
                      image1: 'images/logotwo.png',
                      image2: 'images/logotwo.png',
                      image3: 'images/logotwo.png',
                    ),
                    WorkExperience(
                      image1: 'images/logotwo.png',
                      image2: 'images/logotwo.png',
                      image3: 'images/logotwo.png',
                    ),
                    WorkExperience(
                      image1: 'images/logotwo.png',
                      image2: 'images/logotwo.png',
                      image3: 'images/logotwo.png',
                    ),
                  ],
                ),
              ),
              /////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 70,
              ),

              const FeaturesWidget(),
              const SizedBox(
                height: 10,
              ),
              const FooterWidget()
            ],
          ),
        ));
  }
}

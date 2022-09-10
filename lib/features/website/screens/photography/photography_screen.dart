import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/footer/widgets/carousel_slider.dart';
import 'package:drone_website/features/website/screens/home/widgets/scroll_view_body.dart';
import 'package:drone_website/features/website/screens/photography/widgets/duo_square.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:flutter/material.dart';

class PhotographyScreen extends StatefulWidget {
  const PhotographyScreen({Key? key}) : super(key: key);

  @override
  State<PhotographyScreen> createState() => _PhotographyScreenState();
}

class _PhotographyScreenState extends State<PhotographyScreen> {
  final List<String> images = [
    'assets/images/youtub(1).png',
    'assets/images/vegeta(2).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images[0]))),
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
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images[1]))),
              ),
            ]),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              Center(
                child: SizedBox(
                    width: double.infinity,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('images/panecillo.jpg'))),
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              BioText(
                text:
                    'Produce high-quality content with the state-of-the-art equipment with our high-tech drone team. Our talented production studio are always at the ready with a full inventory of professional-grade equipment. We are ready to help out develop, produce and have a massive impact in any type of industry ',
                color: Colors.grey.shade700,
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 1030,
                child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const DuoSquare();
                    }),
              ),

              const CarouselSliderWidget(),
              Container(
                height: 50,
                color: Colors.black,
              ),

              Container(
                height: 1030,
                child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const DuoSquare();
                    }),
              ),

              const CarouselSliderWidget(),
              Container(
                height: 50,
                color: Colors.black,
              ),

              Container(
                height: 1030,
                child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const DuoSquare();
                    }),
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
                height: 50,
              ),
              Container(
                height: 60,
                color: Colors.white,
                child: const Center(
                    child: Text(
                  "YOU CAN FIND US IN INSTAGRAM AS @PITAJAYA_DRONES",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                )),
              ),
              const ScrollViewBody(),
              const FeaturesWidget(),
              const FooterWidget()
            ],
          ),
        ));
  }
}

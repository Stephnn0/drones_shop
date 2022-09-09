import 'package:drone_website/features/auth/auth_screen.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/footer/widgets/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeWebsiteScreen extends StatefulWidget {
  static const String routeName = '/home';

  const HomeWebsiteScreen({Key? key}) : super(key: key);

  @override
  State<HomeWebsiteScreen> createState() => _HomeWebsiteScreenState();
}

class _HomeWebsiteScreenState extends State<HomeWebsiteScreen> {
  final List<String> images = [
    'assets/images/uno.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
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
                      ' PITAJAYA DRONE STUDIOS            EXCLUSIVE MEDIA SERVICES           VIDEO & PHOTOGRAPHY PRODUCTIONS             REAL ESTATE AERIAL PROJECTS                    ',
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ]),
          ),
          elevation: 0,
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, AuthScreen.routeName),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, AuthScreen.routeName),
                  child: const Icon(
                    Icons.contact_support_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            )
          ],
          backgroundColor: Colors.black,
        ),
      ),
      //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Center(
                child: Image(image: AssetImage(images[0])),
              ),
              //const ImageStack(),

              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.circular(16)),
              //     child: AnimatedTextKit(repeatForever: true, animatedTexts: [
              //       TypewriterAnimatedText(
              //           'Enjoy next-level comfort and convenience with DJI Goggles 2. ',
              //           textStyle: const TextStyle(
              //               color: Colors.white,
              //               fontSize: 50,
              //               fontWeight: FontWeight.bold)),
              //       TypewriterAnimatedText(
              //           'its design was made for you to be bold.',
              //           textStyle: const TextStyle(
              //               color: Colors.white,
              //               fontSize: 50,
              //               fontWeight: FontWeight.bold)),
              //       TypewriterAnimatedText('PITAJAYA DRONE STUDIOS...',
              //           textStyle: const TextStyle(
              //               color: Colors.white,
              //               //Color.fromARGB(255, 255, 182, 11),
              //               fontSize: 50,
              //               fontWeight: FontWeight.bold))
              //     ]),
              //   ),
              // ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              color: Colors.white,
              child: const Center(
                  child: Text(
                'Explore our Different Types of Services! ',
                style: TextStyle(fontSize: 50, color: Colors.black),
              )),
            ),
            BioText(
              color: Colors.grey.shade700,
            ),
            Container(
              height: 50,
              color: Colors.white,
            ),
            const CarouselSliderWidget(),
            Container(
              height: 50,
              color: Colors.black,
            ),
            BioText(
              color: Colors.grey.shade700,
            ),
            const CarouselSliderWidget(),
            Container(
              height: 50,
              color: Colors.black,
            ),
            BioText(
              color: Colors.grey.shade700,
            ),
            const CarouselSliderWidget(),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              color: Colors.black,
            ),
            const SizedBox(
              height: 30,
            ),
            //////////////////////////////////////////////////////////////////////////

            // SizedBox(
            //   height: 730,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: const [
            //       ServicesWidget(),
            //       ServicesWidget(),
            //       ServicesWidget(),
            //     ],
            //   ),
            // ),

            BioText(
              color: Colors.grey.shade700,
            ),

            /////////////////////////////////////////////////
            const SizedBox(
              height: 5,
            ),
            const FeaturesWidget(),
            const SizedBox(
              height: 10,
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}

import 'package:drone_website/features/auth/auth_screen.dart';
import 'package:drone_website/features/website/screens/branded/data/image_data.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/duo_row.dart';
import 'package:drone_website/features/website/screens/branded/widgets/image_cart.dart';
import 'package:drone_website/features/website/screens/deals/deals_scree.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/footer/services.dart';
import 'package:drone_website/features/website/screens/footer/widgets/carousel_slider.dart';
import 'package:drone_website/features/website/screens/gallery/gallery_screen.dart';
import 'package:drone_website/features/website/screens/servicios/servicios_screen.dart';
import 'package:drone_website/features/website/screens/socialMedia/social_media_screen.dart';
import 'package:drone_website/features/website/screens/store/store_screen.dart';
import 'package:drone_website/features/website/screens/teams/teams_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeWebsiteScreen extends StatefulWidget {
  static const String routeName = '/home';

  const HomeWebsiteScreen({Key? key}) : super(key: key);

  @override
  State<HomeWebsiteScreen> createState() => _HomeWebsiteScreenState();
}

class _HomeWebsiteScreenState extends State<HomeWebsiteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Row(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('images/dro.png'))),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, GalleryScreen.routeName),
                child: const Text(
                  'REAL STATE',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, ServiciosScreen.routeName),
                child: const Text(
                  'ENTERPRISE',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, TeamsScreen.routeName),
                child: const Text(
                  'STORY',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              // const SizedBox(
              //   width: 15,
              // ),
              // // InkWell(
              // //   onTap: () =>
              // //       Navigator.pushNamed(context, DealsScreen.routeName),
              // //   child: const Text(
              // //     'STORE',
              // //     style: TextStyle(fontSize: 15, color: Colors.white),
              // //   ),
              // // ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, StoreScreen.routeName),
                child: const Text(
                  'VIDEOCLIPS',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, SocialMediaScreen.routeName),
                child: const Text(
                  'FAQ ',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
          elevation: 0,
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, AuthScreen.routeName),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 20,
                ),
                const SizedBox(
                  width: 25,
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
              const Center(
                child: Image(image: AssetImage('images/uno.jpg')),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16)),
                  child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                    TypewriterAnimatedText(
                        'Enjoy next-level comfort and convenience with DJI Goggles 2. ',
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                    TypewriterAnimatedText(
                        'its design was made for you to be bold.',
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                    TypewriterAnimatedText('PITAJAYA DRONE STUDIOS...',
                        textStyle: const TextStyle(
                            color: Colors.white,
                            //Color.fromARGB(255, 255, 182, 11),
                            fontSize: 50,
                            fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              color: Colors.black,
              child: const Center(
                  child: Text(
                'Explore our Different Types of Services! ',
                style: TextStyle(fontSize: 50),
              )),
            ),
            BioText(),
            CarouselSliderWidget(),
            Container(
              height: 50,
              color: Colors.black,
            ),
            BioText(),
            CarouselSliderWidget(),
            Container(
              height: 50,
              color: Colors.black,
            ),
            BioText(),
            CarouselSliderWidget(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              color: Colors.black,
            ),
            const SizedBox(
              height: 30,
            ),
            const ServicesWidget(),
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

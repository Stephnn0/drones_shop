import 'package:drone_website/features/auth/auth_screen.dart';
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
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/dronetre.jpg'))),
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, GalleryScreen.routeName),
                child: const Text(
                  'Gallery',
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
                  'Services',
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
                  'Teams',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, DealsScreen.routeName),
                child: const Text(
                  'Deals',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, StoreScreen.routeName),
                child: const Text(
                  'Story',
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
                  'Social Media',
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
          backgroundColor: Colors.grey.shade900,
        ),
      ),
      //////////////////////////////////////////////////////////////////////////////////////////////// body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              const Center(
                child: Image(image: AssetImage('images/one.jpg')),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                  // FadeAnimatedText('Welcome Back ...!',
                  //     textStyle: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 50,
                  //         fontWeight: FontWeight.bold)),
                  TypewriterAnimatedText(
                      'Enjoy next-level comfort and convenience with DJI Goggles 2. ',
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold)),
                  TypewriterAnimatedText(
                      'its design was made for you to be bold.',
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold)),
                  RotateAnimatedText('PITAJAYA DRONE STUDIO',
                      textStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 70,
                        fontWeight: FontWeight.w200,
                      )),
                  TypewriterAnimatedText('Scroll down to learn more...',
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold))
                ]),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            CarouselSliderWidget(),
            Container(
              height: 30,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            ServicesWidget(),
            const SizedBox(
              height: 5,
            ),
            FeaturesWidget(),
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

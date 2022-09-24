import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/footer/widgets/carousel_slider.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/image_stack.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/realstate_cart.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:drone_website/features/website/widgets/image2_stock.dart';
import 'package:drone_website/features/website/widgets/image3_stack.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class HomeWebsiteScreen extends StatefulWidget {
  static const String routeName = '/home';

  const HomeWebsiteScreen({Key? key}) : super(key: key);

  @override
  State<HomeWebsiteScreen> createState() => _HomeWebsiteScreenState();
}

class _HomeWebsiteScreenState extends State<HomeWebsiteScreen> {
  final List<String> images = [
    'assets/images/uno.jpg',
    'assets/images/pitayaja.png',
    'assets/images/redbull.jpg',
    'assets/images/net.jpeg',
    'assets/images/vegeta(2).png',
    'assets/images1/q.jpg',
  ];

  final List<String> video = [
    'assets/images/video2.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image3Stack(
                image: images[5],
                subtitle: "VIDEO SERVICES",
                title: "PITAJAYA DRONE STUDIOS"),
            Image2Stack(
                image: images[0],
                subtitle: " REAL TIME DRONE PRODUCTIONS",
                title: "BRANDED CONTENT"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BioText(
                text:
                    'Our years of experience has allow us to develop content that is most successful and powerful when it comes to creating stories to tell. By crafting a good narrative we will create  chemistry with your audience, connect with them on a deeper level and create content that sticks in their minds',
                color: Colors.grey.shade700,
              ),
            ),
            /////////////////////////////////////////////////////////////////////////////////////////////////////
            const SizedBox(
              height: 10,
            ),
            //////////////////////////////////////////////////////////////////////////////////////////////////////
            MultipleContainer(
              titlecolor: Colors.white,
              iconcolor: Colors.white,
              icon: Icons.video_collection,
              description:
                  'We help you develop closer customer relationships with the intent to evoke emotions with your branded content. You can also provide clear milestones throughout the production to determine if and where your team has to go back and make changes.',
              title: 'PITAJAYA PRODUCTIONS READY TO ORDER',
              color1: Colors.black,
              color2: Colors.black,
              color3: Colors.black,
              colordescription: Colors.grey.shade700,
            ),
            MultipleContainer(
              titlecolor: Colors.white,
              iconcolor: Colors.white,
              icon: Icons.camera_alt_outlined,
              description:
                  'We help you develop closer customer relationships with the intent to evoke emotions with your branded content. You can also provide clear milestones throughout the production to determine if and where your team has to go back and make changes.',
              title: 'PITAJAYA PRODUCTIONS READY TO ORDER',
              color1: Colors.black,
              color2: Colors.black,
              color3: Colors.black,
              colordescription: Colors.grey.shade700,
            ),

            const CarouselSliderWidget(),
            Container(
              height: 50,
              color: Colors.black,
            ),

            Container(
              height: 30,
              color: Colors.black,
            ),

            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 1400,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                  child: Text(
                "MIAMI'S LEADING REAL STATE PHOTOGRAPHY STUDIO! ",
                style: GoogleFonts.abel(
                    fontSize: 50,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              //
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
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
            /////////////////////////////////////////////////////////////
            Container(
              height: 50,
              color: Colors.black,
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
            ////////////////////
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
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}

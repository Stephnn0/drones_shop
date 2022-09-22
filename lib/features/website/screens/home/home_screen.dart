import 'package:drone_website/features/auth/auth_screen.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/footer/widgets/carousel_slider.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/image_stack.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:drone_website/features/website/widgets/image2_stock.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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

  late VideoPlayerController _controller;

  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(video[0]);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(50.0),
      //   child: AppBar(
      //     automaticallyImplyLeading: false,
      //     centerTitle: false,
      //     title: Container(
      //       height: 25,
      //       decoration: BoxDecoration(
      //         // color: Colors.grey.shade300,
      //         color: Colors.white,
      //         // Colors.grey.shade300,

      //         borderRadius: BorderRadius.circular(5),
      //       ),
      //       child: AnimatedTextKit(
      //           totalRepeatCount: 1,
      //           repeatForever: false,
      //           animatedTexts: [
      //             TypewriterAnimatedText(
      //                 '   PITAJAYA DRONE STUDIOS               EXCLUSIVE MEDIA SERVICES                VIDEO & PHOTOGRAPHY PRODUCTIONS             REAL ESTATE AERIAL PROJECTS           ',
      //                 textStyle: const TextStyle(
      //                     color: Colors.black,
      //                     fontSize: 20,
      //                     fontWeight: FontWeight.bold)),
      //           ]),
      //     ),
      //     elevation: 0,
      //     actions: [
      //       Row(
      //         children: [
      //           InkWell(
      //             onTap: () =>
      //                 Navigator.pushNamed(context, AuthScreen.routeName),
      //             child: const Icon(
      //               Icons.shopping_cart,
      //               color: Colors.white,
      //               size: 30,
      //             ),
      //           ),
      //           const SizedBox(
      //             width: 15,
      //           ),
      //           InkWell(
      //             onTap: () =>
      //                 Navigator.pushNamed(context, AuthScreen.routeName),
      //             child: const Icon(
      //               Icons.contact_support_outlined,
      //               color: Colors.white,
      //               size: 30,
      //             ),
      //           ),
      //           const SizedBox(
      //             width: 15,
      //           ),
      //         ],
      //       )
      //     ],
      //     backgroundColor: Colors.black,
      //   ),
      // ),
      //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// body
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageStack(
                image: images[5],
                subtitle: "VIDEO SERVICES",
                title: "PITAJAYA DRONE STUDIOS"),
            Image2Stack(
                image: images[0],
                subtitle: " REAL TIME DRONE PRODUCTIONS",
                title: "BRANDED CONTENT"),

            // Stack(children: [
            //   Center(
            //     child: Image(image: AssetImage(images[0])),
            //   ),
            // ]),
            //////////////////////////
            // const SizedBox(
            //   height: 60,
            // ),

            // Center(
            //     child: Text(
            //   'Explore our Different Types of Services! ',
            //   style: GoogleFonts.abel(fontSize: 70, color: Colors.white),
            // )),
            // // Container(
            // //   height: 150,
            // //   width: 190,
            // //   decoration: BoxDecoration(
            // //       image: DecorationImage(image: AssetImage(images[4]))),
            // // ),
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

            const CarouselSliderWidget(),
            Container(
              height: 50,
              color: Colors.black,
            ),

            // const CarouselSliderWidget(),
            // Container(
            //   height: 50,
            //   color: Colors.black,
            // ),

            // const CarouselSliderWidget(),

            Container(
              height: 30,
              color: Colors.black,
            ),
            // MultipleContainer(
            //   titlecolor: Colors.white,
            //   iconcolor: Colors.white,
            //   icon: Icons.video_collection,
            //   description:
            //       'Video marketing has become a vital part of any business sector in the last decade and has become highly popular in real estate. As a result, websites with video content are seeing an increase in search results, which is why their properties are getting sold quickly.',
            //   title: 'PRODUCTIONS',
            //   color1: Colors.black,
            //   color2: Colors.black,
            //   color3: Colors.black,
            //   colordescription: Colors.grey.shade700,
            // ),
            const SizedBox(
              height: 30,
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
            // const SizedBox(
            //   height: 30,
            // ),
            // FutureBuilder(
            //     future: _initializeVideoPlayerFuture,
            //     builder: (context, snapshot) {
            //       if (snapshot.connectionState == ConnectionState.done) {
            //         return Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 500.0),
            //           child: AspectRatio(
            //             aspectRatio: _controller.value.aspectRatio,
            //             child: VideoPlayer(_controller),
            //           ),
            //         );
            //       } else {
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       }
            //     }),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: FloatingActionButton(
            //       onPressed: () {
            //         setState(() {
            //           if (_controller.value.isPlaying) {
            //             _controller.pause();
            //           } else {
            //             _controller.play();
            //           }
            //         });
            //       },
            //       child: Icon(_controller.value.isPlaying
            //           ? Icons.pause
            //           : Icons.play_arrow)),
            // ),
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

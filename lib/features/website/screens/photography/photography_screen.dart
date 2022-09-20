import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/footer/widgets/carousel_slider.dart';
import 'package:drone_website/features/website/screens/home/widgets/scroll_view_body.dart';
import 'package:drone_website/features/website/screens/photography/widgets/duo_square.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PhotographyScreen extends StatefulWidget {
  const PhotographyScreen({Key? key}) : super(key: key);

  @override
  State<PhotographyScreen> createState() => _PhotographyScreenState();
}

class _PhotographyScreenState extends State<PhotographyScreen> {
  final List<String> images = [
    'assets/images/youtub(1).png',
    'assets/images/vegeta(2).png',
    'assets/images/isss(1).png',
  ];

  final List<String> video = [
    'assets/images/video.mp4',
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
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images[2]))),
              ),
            ]),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              // Center(
              //   child: SizedBox(
              //       width: double.infinity,
              //       child: Image(
              //           fit: BoxFit.cover,
              //           image: AssetImage('images/panecillo.jpg'))),
              // ),

              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    });
                  },
                  child: Icon(_controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow)),

              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              BioText(
                text:
                    'Produce high-quality content with the state-of-the-art equipment with our high-tech drone team. Our talented production studio are always at the ready with a full inventory of professional-grade equipment. We are ready to help out develop, produce and have a massive impact in any type of industry ',
                color: Colors.grey.shade700,
              ),
              const SizedBox(
                height: 10,
              ),

              // Container(
              //   height: 1030,
              //   child: ListView.builder(
              //       itemCount: 1,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) {
              //         return const DuoSquare();
              //       }),
              // ),
              // BioText(
              //   text:
              //       'Produce high-quality content with the state-of-the-art equipment with our high-tech drone team. Our talented production studio are always at the ready with a full inventory of professional-grade equipment. We are ready to help out develop, produce and have a massive impact in any type of industry ',
              //   color: Colors.grey.shade700,
              // ),
              //////////////////////////////////////////////////////////////////////////////////////////////////////
              MultipleContainer(
                titlecolor: Colors.white,
                iconcolor: Colors.white,
                icon: Icons.video_collection,
                description:
                    'When creating branded content we believe it is integral to fully understand your target audience. This involves getting to know the demographics and psychographics of your audience which may include their lifestyle choices, social media preferences and attitudes towards ethical issues. ',
                title: 'PRODUCTIONS',
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
              const SizedBox(
                height: 10,
              ),
              // BioText(
              //   text:
              //       'Produce high-quality content with the state-of-the-art equipment with our high-tech drone team. Our talented production studio are always at the ready with a full inventory of professional-grade equipment. We are ready to help out develop, produce and have a massive impact in any type of industry ',
              //   color: Colors.grey.shade700,
              // ),
              // const SizedBox(
              //   height: 10,
              // ),

              // Container(
              //   height: 1030,
              //   child: ListView.builder(
              //       itemCount: 1,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) {
              //         return const DuoSquare();
              //       }),
              // ),
              // BioText(
              //   text:
              //       'Produce high-quality content with the state-of-the-art equipment with our high-tech drone team. Our talented production studio are always at the ready with a full inventory of professional-grade equipment. We are ready to help out develop, produce and have a massive impact in any type of industry ',
              //   color: Colors.grey.shade700,
              // ),

              const CarouselSliderWidget(),
              Container(
                height: 50,
                color: Colors.black,
              ),
              const CarouselSliderWidget(),
              Container(
                height: 50,
                color: Colors.black,
              ),

              // Container(
              //   height: 1030,
              //   child: ListView.builder(
              //       itemCount: 1,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) {
              //         return const DuoSquare();
              //       }),
              // ),

              // const SizedBox(
              //   height: 60,
              // ),
              Container(
                height: 100,
                color: Colors.grey.shade200,
                child: const Center(
                    child: Text(
                  "CONTACT US! ",
                  style: TextStyle(
                      fontSize: 70,
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
              // Container(
              //   height: 60,
              //   color: Colors.white,
              //   child: const Center(
              //       child: Text(
              //     "@PITAJAYA_DRONES",
              //     style: TextStyle(
              //       fontSize: 50,
              //       color: Colors.black,
              //     ),
              //   )),
              // ),
              //const ScrollViewBody(),
              // const FeaturesWidget(),
              Container(
                height: 20,
                color: Colors.white,
              ),
              const FooterWidget()
            ],
          ),
        ));
  }
}

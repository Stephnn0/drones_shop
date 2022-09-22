import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/branded/widgets/work_experience.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/image_stack.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/realstate_cart.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandedContent extends StatelessWidget {
  BrandedContent({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/images1/q.jpg',
    'assets/images/res.jpg',
    'assets/images/youtub(1).png',
    'assets/images/isss(1).png',
    'assets/images/casa.jpg',
    'assets/images/vegeta(2).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   leading: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 50,
        //       width: 50,
        //       decoration: BoxDecoration(
        //           image: DecorationImage(image: AssetImage(images[1]))),
        //     ),
        //   ),
        //   title: Container(
        //     height: 25,
        //     decoration: BoxDecoration(
        //       // color: Colors.grey.shade300,
        //       color: Colors.white,
        //       // Colors.grey.shade300,

        //       borderRadius: BorderRadius.circular(5),
        //     ),
        //     child: AnimatedTextKit(
        //         totalRepeatCount: 1,
        //         repeatForever: false,
        //         animatedTexts: [
        //           TypewriterAnimatedText(
        //               '         GET IN TOUCH           SOCIAL MEDIA OR CONTACT INFORMATION               786 315 7771                PITAJAYADRONES@GMAIL.COM                  MIAMI | ECUADOR         ',
        //               textStyle: const TextStyle(
        //                   color: Colors.black,
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.bold)),
        //         ]),
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 50,
        //         width: 50,
        //         decoration: BoxDecoration(
        //             image: DecorationImage(image: AssetImage(images[2]))),
        //       ),
        //     ),
        //   ],
        //   backgroundColor: Colors.black,
        //   elevation: 0,
        // ),
        backgroundColor: Colors.black,
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
                  subtitle: " REAL TIME DRONE PRODUCTIONS",
                  title: "BRANDED CONTENT"),
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              ///////////////////////////////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BioText(
                  text:
                      'Branded Content is Digital Video Entertainment aimed specifically for brands, designed to develop high quality media productions while connecting withaudiences on an emotional level.',
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
                    'When creating branded content we believe it is integral to fully understand your target audience. This involves getting to know the demographics and psychographics of your audience which may include their lifestyle choices, social media preferences and attitudes towards ethical issues. ',
                title: 'PRODUCTIONS',
                color1: Colors.black,
                color2: Colors.black,
                color3: Colors.black,
                colordescription: Colors.grey.shade700,
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////
              const MultipleContainer(
                titlecolor: Colors.black,
                iconcolor: Colors.black,
                icon: Icons.video_camera_back,
                description:
                    'Branded content that is in line with your values and your audience values. We help you build a positive brand perception that will make you build trust and credibility with your audience. We develop closer customer relationships with the intent to evoke emotions with your branded content.',
                title: 'VIDEOS',
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
              MultipleContainer(
                titlecolor: Colors.white,
                iconcolor: Colors.white,
                icon: Icons.camera_alt_outlined,
                description:
                    'Our years of experience has allow us to develop content that is most successful and powerful when it comes to creating stories to tell. By crafting a good narrative we will create  chemistry with your audience, connect with them on a deeper level and create content that sticks in their minds',
                title: 'PHOTOGRAPHY',
                color1: Colors.black,
                color2: Colors.black,
                color3: Colors.black,
                colordescription: Colors.grey.shade700,
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
              /////////////////////////////////////////////////////////////////////////////////////////////////////
              // const MultipleContainer(
              //   titlecolor: Colors.black,
              //   iconcolor: Colors.black,
              //   icon: Icons.video_stable,
              //   description:
              //       'We help you develop closer customer relationships with the intent to evoke emotions with your branded content. You can also provide clear milestones throughout the production to determine if and where your team has to go back and make changes.',
              //   title: 'AERIAL SERVICES',
              //   color1: Colors.white,
              //   color2: Colors.white,
              //   color3: Colors.white,
              //   colordescription: Colors.white,
              // ),
              /////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 20,
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////

              // const Center(
              //     child: Icon(
              //   Icons.camera_alt_outlined,
              //   color: Colors.grey,
              //   size: 60,
              // )),
              Container(
                height: 190,
                width: 190,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images[5]))),
              ),
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
                  children: const [
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
              // Container(
              //   height: 190,
              //   width: 190,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(image: AssetImage(images[4]))),
              // ),
              /////////////////////////////////////////////////////////////////////////////////////////////////////
              // const SizedBox(
              //   height: 70,
              // ),

              // const FeaturesWidget(),
              // const SizedBox(
              //   height: 10,
              // ),
              const SizedBox(
                height: 80,
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
        ));
  }
}

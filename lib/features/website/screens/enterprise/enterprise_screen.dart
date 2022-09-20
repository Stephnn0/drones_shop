import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/image_stack.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/realstate_cart.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:flutter/material.dart';

class EnterpriseScreen extends StatelessWidget {
  EnterpriseScreen({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/images/youtub(1).png',
    'assets/images/isss(1).png',
    'assets/images/five.jpg',
    'assets/images/panecillo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageStack(
            image: images[3],
            title: "ENTERPRISE",
            subtitle: "PHOTOGRAPHY PRODUCTIONS",
          ),
          BioText(
            text:
                'Video is one of the influential assets that assist you in selling more property. What makes video so powerful is its flexibility and reach. You can place videos on websites, email campaigns, social media sites, YouTube, etc. But that does not imply that you have to make a double effort to make them. Instead, make it once and then repurpose it to obtain the maximum mileage out of it.',
            color: Colors.grey.shade700,
          ),
          const SizedBox(
            height: 10,
          ),
          const MultipleContainer(
            titlecolor: Colors.white,
            iconcolor: Colors.white,
            icon: Icons.home,
            description:
                'Our real estate video production team brings luxury properties to life with the highest-quality HD digital videos edited for web, mobile, social media and more. We use only the latest pro digital cinema technology, stabilization tools and exciting editing techniques to create video content that can seduce luxury-minded audiences and elevate your distance-selling chances. ',
            title: 'REAL ESTATE PHOTOGRAPHY',
            color1: Colors.black,
            color2: Colors.black,
            color3: Colors.black,
            colordescription: Colors.white,
          ),
          const MultipleContainer(
            titlecolor: Colors.black,
            iconcolor: Colors.black,
            icon: Icons.construction,
            description:
                'Video marketing has become a vital part of any business sector in the last decade and has become highly popular in real estate. As a result, websites with video content are seeing an increase in search results, which is why their properties are getting sold quickly.',
            title: 'PRODUCTIONS',
            color1: Colors.white,
            color2: Colors.white,
            color3: Colors.white,
            colordescription: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          const MultipleContainer(
            titlecolor: Colors.white,
            iconcolor: Colors.white,
            icon: Icons.subscriptions_outlined,
            description:
                'Video is one of the influential assets that assist you in selling more property. What makes video so powerful is its flexibility and reach. You can place videos on websites, email campaigns, social media sites, YouTube, etc. But that does not imply that you have to make a double effort to make them. Instead, make it once and then repurpose it to obtain the maximum mileage out of it.',
            title: 'COMMERCIAL AND BUSINESS VIRTUAL TOURS',
            color1: Colors.black,
            color2: Colors.black,
            color3: Colors.black,
            colordescription: Colors.white,
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 1400,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(40)),
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
            //
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
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

          const SizedBox(
            height: 60,
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
          // const ScrollViewBody(),
          // const FeaturesWidget(),
          const FooterWidget()
        ],
      )),
    );
  }
}

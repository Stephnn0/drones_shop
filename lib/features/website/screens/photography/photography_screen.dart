import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:drone_website/features/website/screens/branded/data/image_data.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/image_cart.dart';
import 'package:drone_website/features/website/screens/photography/widgets/duo_square.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:flutter/material.dart';

class PhotographyScreen extends StatelessWidget {
  const PhotographyScreen({Key? key}) : super(key: key);

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
                        '               CONTACT US              EXCLUSIVE AERIAL MEDIA SERVICES               786 315 7771                PITAJAYADRONES@GMAIL.COM                  MIAMI | ECUADOR         ',
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ]),
            ),
            actions: [
              Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/vegeta(2).png'))),
              ),
            ]),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              Center(
                child: Container(
                    width: double.infinity,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('images/panecillo.jpg'))),
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              BioText(
                color: Colors.grey.shade700,
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 1630,
                child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DuoSquare();
                    }),
              ),
              BioText(
                color: Colors.grey.shade700,
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 1630,
                child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DuoSquare();
                    }),
              ),
              BioText(
                color: Colors.grey.shade700,
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 1630,
                child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DuoSquare();
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

              ContactWidget(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}

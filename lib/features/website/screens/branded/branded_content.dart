import 'package:drone_website/features/website/screens/branded/data/image_data.dart';
import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/duo_row.dart';
import 'package:drone_website/features/website/screens/branded/widgets/image_cart.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/branded/widgets/work_experience.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:flutter/material.dart';

class BrandedContent extends StatelessWidget {
  const BrandedContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              Center(
                child: Container(
                    width: double.infinity,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('images/res.jpg'))),
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 10,
              ),
              BioText(),
              SizedBox(
                height: 10,
              ),
              MultipleContainer(
                titlecolor: Colors.white,
                iconcolor: Colors.white,
                icon: Icons.home,
                description:
                    'Enterprise Photography provides expertise in all areas of architectural photography and has worked with many industry professionals including international construction groups, renowned architects, property developers, luxury property realtors, landscape designers and residential owners. EP has also been featured in online and print publications showcasing beautiful feats of architecture and design.',
                title: 'ARCHITECTURE',
                color1: Colors.black,
                color2: Colors.black,
                color3: Colors.black,
                colordescription: Colors.white,
              ),
              MultipleContainer(
                titlecolor: Colors.black,
                iconcolor: Colors.black,
                icon: Icons.construction,
                description:
                    'Enterprise Photography provides expertise in all areas of architectural photography and has worked with many industry professionals including international construction groups, renowned architects, property developers, luxury property realtors, landscape designers and residential owners. EP has also been featured in online and print publications showcasing beautiful feats of architecture and design.',
                title: 'ARCHITECTURE',
                color1: Colors.white,
                color2: Colors.white,
                color3: Colors.white,
                colordescription: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              MultipleContainer(
                titlecolor: Colors.white,
                iconcolor: Colors.white,
                icon: Icons.home,
                description:
                    'Enterprise Photography provides expertise in all areas of architectural photography and has worked with many industry professionals including international construction groups, renowned architects, property developers, luxury property realtors, landscape designers and residential owners. EP has also been featured in online and print publications showcasing beautiful feats of architecture and design.',
                title: 'ARCHITECTURE',
                color1: Colors.black,
                color2: Colors.black,
                color3: Colors.black,
                colordescription: Colors.white,
              ),
              MultipleContainer(
                titlecolor: Colors.black,
                iconcolor: Colors.black,
                icon: Icons.construction,
                description:
                    'Enterprise Photography provides expertise in all areas of architectural photography and has worked with many industry professionals including international construction groups, renowned architects, property developers, luxury property realtors, landscape designers and residential owners. EP has also been featured in online and print publications showcasing beautiful feats of architecture and design.',
                title: 'ARCHITECTURE',
                color1: Colors.white,
                color2: Colors.white,
                color3: Colors.white,
                colordescription: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey,
                size: 60,
              )),
              Text(
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
                  children: [
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
              const SizedBox(
                height: 30,
              ),

              const FeaturesWidget(),
              const SizedBox(
                height: 10,
              ),
              const FooterWidget()
            ],
          ),
        ));
  }
}

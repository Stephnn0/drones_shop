import 'package:drone_website/features/website/screens/branded/branded_content.dart';
import 'package:drone_website/features/website/screens/gallery/gallery_screen.dart';
import 'package:drone_website/features/website/screens/home/home_screen.dart';
import 'package:drone_website/features/website/screens/photography/photography_screen.dart';
import 'package:drone_website/features/website/widgets/coming_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebWebsiteLayout extends StatefulWidget {
  WebWebsiteLayout({Key? key}) : super(key: key);

  @override
  State<WebWebsiteLayout> createState() => _WebWebsiteLayoutState();
}

class _WebWebsiteLayoutState extends State<WebWebsiteLayout> {
  final List<String> images = [
    'assets/images/pitayaja.png',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Container(
              height: 80,
              width: 90,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(images[0]))),
            ),
            backgroundColor: Colors.black,
            // ignore: prefer_const_constructors
            bottom: TabBar(
                isScrollable: false,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
                tabs: [
                  Tab(
                    child: Text('HOME',
                        style: GoogleFonts.averiaSansLibre(fontSize: 15)),
                    //icon: Icon(Icons.home),
                  ),
                  Tab(
                    child: Text('BRANDED CONTENT',
                        style: GoogleFonts.averiaSansLibre(fontSize: 15)),
                    //icon: Icon(Icons.home),
                  ),
                  Tab(
                    child: Text('MULTIMEDIA',
                        style: GoogleFonts.averiaSansLibre(fontSize: 15)),
                    //icon: Icon(Icons.home),
                  ),
                  Tab(
                    child: Text('REAL ESTATE',
                        style: GoogleFonts.averiaSansLibre(fontSize: 15)),
                    //icon: Icon(Icons.home),
                  ),
                  Tab(
                    child: Text('ENTERPRISE',
                        style: GoogleFonts.averiaSansLibre(fontSize: 15)),
                    //icon: Icon(Icons.home),
                  ),
                ]),
          ),
          body: const TabBarView(
            children: [
              HomeWebsiteScreen(),
              BrandedContent(),
              PhotographyScreen(),
              GalleryScreen(),
              ComingUpScreen()
            ],
          ),
        ));
  }
}

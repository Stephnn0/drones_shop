import 'package:drone_website/features/website/screens/branded/branded_content.dart';
import 'package:drone_website/features/website/screens/home/home_screen.dart';
import 'package:drone_website/features/website/screens/photography/photography_screen.dart';
import 'package:flutter/material.dart';

class WebWebsiteLayout extends StatefulWidget {
  WebWebsiteLayout({Key? key}) : super(key: key);

  @override
  State<WebWebsiteLayout> createState() => _WebWebsiteLayoutState();
}

class _WebWebsiteLayoutState extends State<WebWebsiteLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Container(
              height: 80,
              width: 90,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/pitayaja.png'))),
            ),
            backgroundColor: Colors.black,
            bottom: const TabBar(
                labelStyle: TextStyle(fontWeight: FontWeight.w200),
                tabs: [
                  Tab(
                    text: ' HOME',
                    //icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: 'BRANDED CONTENT',
                    // icon: Icon(Icons.star),
                  ),
                  Tab(
                    text: 'PHOTOGRAPHY',
                    // icon: Icon(Icons.person),
                  )
                ]),
          ),
          body: const TabBarView(
            children: [
              HomeWebsiteScreen(),
              BrandedContent(),
              PhotographyScreen()
            ],
          ),
        ));
  }
}

import 'package:drone_website/features/website/screens/home/home_screen.dart';
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
              height: 70,
              width: 80,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/nav.png'))),
            ),
            backgroundColor: Colors.grey.shade900,
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Home',
                //icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Productions',
                // icon: Icon(Icons.star),
              ),
              Tab(
                text: 'Content',
                // icon: Icon(Icons.person),
              )
            ]),
          ),
          body: const TabBarView(
            children: [HomeWebsiteScreen(), Text('Store'), Text('Production ')],
          ),
        ));
  }
}

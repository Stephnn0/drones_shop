import 'package:drone_website/features/store/screens/homeStore.dart';
import 'package:drone_website/features/website/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class WebStoreLayout extends StatefulWidget {
  static const String routeName = '/webstorelayout';

  const WebStoreLayout({Key? key}) : super(key: key);

  @override
  State<WebStoreLayout> createState() => _WebStoreLayoutState();
}

class _WebStoreLayoutState extends State<WebStoreLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
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
                text: 'Store',
                //icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Wallpapers',
                // icon: Icon(Icons.star),
              ),
              Tab(
                text: 'Services',
                // icon: Icon(Icons.person),
              )
            ]),
          ),
          body: const TabBarView(
            children: [
              HomeStore(),
              Center(
                child: Text('hello world'),
              ),
              Center(
                child: Text('hello world'),
              ),

              // HomeWebsiteScreen(),
              //  Text('Store'),
              // Text('Production ')
            ],
          ),
        ));
  }
}

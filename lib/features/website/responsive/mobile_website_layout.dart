import 'package:drone_website/constants/colors.dart';
import 'package:drone_website/features/website/phone_screens/about/about_view.dart';
import 'package:drone_website/features/website/phone_screens/home/home_view.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:flutter/material.dart';

class MobileWebsiteLayout extends StatefulWidget {
  MobileWebsiteLayout({Key? key}) : super(key: key);

  @override
  State<MobileWebsiteLayout> createState() => _MobileWebsiteLayoutState();
}

class _MobileWebsiteLayoutState extends State<MobileWebsiteLayout> {
  final List<String> images = [
    'assets/images/pitayaja.png',
  ];

  int currentIndex = 0;

  final screens = [
    HomeView(),
    AboutView(),
    AboutView(),
    AboutView(),
    AboutView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(images[0]))),
        ),
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          onTap: (index) => setState(() => currentIndex = index),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.facebook_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.messenger_outline_sharp,
                  color: Colors.white,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: '')
          ]),
    );
  }
}

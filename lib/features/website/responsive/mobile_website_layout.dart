import 'package:drone_website/constants/colors.dart';
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.construction,
            color: Colors.white,
            size: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Mobile Version Comming soon',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
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
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                label: '')
          ]),
    );
  }
}

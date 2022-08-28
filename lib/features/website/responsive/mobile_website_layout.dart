import 'package:flutter/material.dart';

class MobileWebsiteLayout extends StatefulWidget {
  MobileWebsiteLayout({Key? key}) : super(key: key);

  @override
  State<MobileWebsiteLayout> createState() => _MobileWebsiteLayoutState();
}

class _MobileWebsiteLayoutState extends State<MobileWebsiteLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('MOBILE VERSION'),
          centerTitle: true,
          leading: Icon(Icons.camera_alt_outlined)),
      body: const Center(child: Text('mobile (coming soon!)')),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: '')
          ]),
    );
  }
}

import 'package:flutter/material.dart';

class MobileStoreLayout extends StatefulWidget {
  const MobileStoreLayout({Key? key}) : super(key: key);

  @override
  State<MobileStoreLayout> createState() => _MobileStoreLayoutState();
}

class _MobileStoreLayoutState extends State<MobileStoreLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('store mobile part ')),
    );
  }
}

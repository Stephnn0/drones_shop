import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
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
            ),
          ),
        ));
  }
}

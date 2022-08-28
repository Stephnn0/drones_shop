import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:flutter/material.dart';

class TeamsScreen extends StatelessWidget {
  static const String routeName = '/teams';

  const TeamsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/nav.png'))),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 500,
          ),
          FeaturesWidget(),
          FooterWidget()
        ],
      )),
    );
  }
}

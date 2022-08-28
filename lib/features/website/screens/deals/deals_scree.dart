import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/home/home_screen.dart';
import 'package:drone_website/features/website/screens/servicios/servicios_screen.dart';
import 'package:flutter/material.dart';

class DealsScreen extends StatelessWidget {
  static const String routeName = '/deals';
  const DealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

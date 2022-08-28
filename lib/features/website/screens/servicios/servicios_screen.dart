import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/home/home_screen.dart';
import 'package:drone_website/features/website/screens/home/widgets/scroll_view_body.dart';
import 'package:flutter/material.dart';

class ServiciosScreen extends StatefulWidget {
  static const String routeName = '/servicios';

  const ServiciosScreen({Key? key}) : super(key: key);

  @override
  State<ServiciosScreen> createState() => _ServiciosScreenState();
}

class _ServiciosScreenState extends State<ServiciosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 70,
          width: 80,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/nav.png'))),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          ScrollViewBody(),
          const SizedBox(
            height: 50,
          ),
          FeaturesWidget(),
          FooterWidget()
        ]),
      ),
    );
  }
}

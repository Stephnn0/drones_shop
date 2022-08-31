import 'package:drone_website/features/website/screens/branded/data/image_data.dart';
import 'package:drone_website/features/website/screens/branded/widgets/image_cart.dart';
import 'package:flutter/material.dart';

class PhotographyScreen extends StatelessWidget {
  const PhotographyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              Center(
                child: Container(
                    width: double.infinity,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('images/panecillo.jpg'))),
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}

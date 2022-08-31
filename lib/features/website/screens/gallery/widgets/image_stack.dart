import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Center(
        child: Image(image: AssetImage('images/casa.jpg')),
      ),
      Align(
          heightFactor: 3.0,
          child: Column(
            children: [
              Container(
                height: 40,
                width: 2,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'WELCOME TO',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                'REAL STATE',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'PHOTOGRAPHY PRODUCTIONS',
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
              Container(
                height: 40,
                width: 2,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(child: Text('CONTACT US')),
              ),
            ],
          )),
    ]);
  }
}

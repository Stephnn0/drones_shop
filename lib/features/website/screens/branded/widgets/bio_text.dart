import 'package:flutter/material.dart';

class BioText extends StatelessWidget {
  const BioText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 400, vertical: 100),
      child: RichText(
          text: TextSpan(
              style: TextStyle(fontSize: 20, color: Colors.black),
              text:
                  'Enterprise Photography specialises in a wide variety of industry based imagery. From architectural interiors to industrial equipment, aerial photography, corporate portraits and every commercial requirement between and beyond. Enterprise Photography is your trusted partner in delivering pristine and professional photographs of your projects, products and business needs.')),
    );
  }
}

import 'package:flutter/material.dart';

class BioText extends StatelessWidget {
  final Color color;
  const BioText({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 400, vertical: 100),
        //   child:

        Padding(
      padding: const EdgeInsets.all(80.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
              child: SizedBox(
            height: 100,
            width: 100,
          )),
          Expanded(
            child: SizedBox(
              width: 500,
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: 20, color: color),
                      text:
                          'Enterprise Photography specialises in a wide variety of industry based imagery. From architectural interiors to industrial equipment, aerial photography, corporate portraits and every commercial requirement between and beyond. Enterprise Photography is your trusted partner in delivering pristine and professional photographs of your projects, products and business needs.')),
            ),
          ),
          const Expanded(
              child: SizedBox(
            height: 100,
            width: 100,
          )),

          //   ),
        ],
      ),
    );
    // );
  }
}

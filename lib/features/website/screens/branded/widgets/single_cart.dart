import 'package:flutter/material.dart';

class SingleCart extends StatelessWidget {
  const SingleCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        height: 500,
        color: Colors.grey.shade900,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'OUR STORY',
                style: TextStyle(fontSize: 35),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            RichText(
                text: const TextSpan(
                    //style: ,
                    children: [
                  TextSpan(
                      text:
                          "Branded content is any sort of content published outside of ad spots that a brand plays a role in producing. That role can be producing the content in-house, collaborating with brand partners, or just funding its creation. Branded content characteristics include: Brand-focused rather than product focused.",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ])),
          ]),
        ));
  }
}

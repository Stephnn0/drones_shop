import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          AnimatedTextKit(repeatForever: true, animatedTexts: [
            // FadeAnimatedText('Welcome Back ...!',
            //     textStyle: TextStyle(
            //         color: Colors.black,
            //         fontSize: 50,
            //         fontWeight: FontWeight.bold)),
            TypewriterAnimatedText(
                'Enjoy next-level comfort and convenience with DJI Goggles 2. ',
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold)),
          ])
        ],
      ),
    );
  }
}

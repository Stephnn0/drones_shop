import 'package:flutter/material.dart';

class QuintaSection extends StatefulWidget {
  const QuintaSection({Key? key}) : super(key: key);

  @override
  State<QuintaSection> createState() => _QuintaSectionState();
}

class _QuintaSectionState extends State<QuintaSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 650,
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
              // image: DecorationImage(
              //     fit: BoxFit.cover,
              //     image: NetworkImage(
              //         'https://cdn.pixabay.com/photo/2015/12/07/14/18/drone-1080844_960_720.jpg'),
              //         ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 650,
            width: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/11/08/14/15/quadrocopter-1033642_960_720.jpg')),
            ),
          ),
        ),
      ],
    );
  }
}

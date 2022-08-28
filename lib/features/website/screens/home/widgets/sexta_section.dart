import 'package:flutter/material.dart';

class SextaSection extends StatefulWidget {
  const SextaSection({Key? key}) : super(key: key);

  @override
  State<SextaSection> createState() => _SextaSectionState();
}

class _SextaSectionState extends State<SextaSection> {
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
                      'https://cdn.pixabay.com/photo/2015/12/07/14/18/drone-1080844_960_720.jpg')),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class FouthSection extends StatelessWidget {
  const FouthSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/09/07/08/57/drone-2724257_960_720.jpg')),
      ),
    );
  }
}

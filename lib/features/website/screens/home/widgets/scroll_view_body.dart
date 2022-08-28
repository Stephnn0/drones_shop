import 'package:flutter/material.dart';

class ScrollViewBody extends StatefulWidget {
  const ScrollViewBody({Key? key}) : super(key: key);

  @override
  State<ScrollViewBody> createState() => _ScrollViewBodyState();
}

class _ScrollViewBodyState extends State<ScrollViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://stormsend1.djicdn.com/stormsend/uploads/49b99f46326a0b4694c76b4b688c126c.jpg')),
        ),
      ),
    ]);
  }
}

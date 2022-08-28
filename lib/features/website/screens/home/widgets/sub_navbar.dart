import 'package:flutter/material.dart';

class SubNavbar extends StatelessWidget {
  const SubNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade200,
      title: Row(
        children: [
          // const SizedBox(
          //   width: 230,
          // ),
          Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/01/31/17/15/copter-2025680_960_720.png'))),
          ),
          const SizedBox(
            width: 25,
          ),
          Text(
            'Home',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade900),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Services',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade900),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Teams',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade900),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Deals',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade900),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Store',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade900),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Social Media',
            style: TextStyle(fontSize: 15, color: Colors.grey.shade900),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        Stack(
            // alignment: Alignment.center,
            children: [
          Container(
            height: 500,
            width: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/08/06/06/25/technology-2589463_960_720.jpg'))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              children: const [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Text(
                    'Video Production',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                Text(
                  'Professional Areal and Ground ',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'Filmmaking Tools ',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Learn More >',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          )
        ]);
    //         ]),
    //       ],
    //     ),
    //   ],
    // );
  }
}

import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Center(
              child: Text('Explore our Different Types of Services',
                  style: TextStyle(color: Colors.black, fontSize: 40)),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                Stack(children: [
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(50),
                          child: Text(
                            'Video Production',
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                        Text(
                          'Professional Areal and Ground ',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Filmmaking Tools ',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Learn More >',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ]),
                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/11/29/02/59/drone-1866961_960_720.jpg'))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/11/29/09/58/dawn-1868870_960_720.jpg'))),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text:
                            'Contact Us today and see how we can help enhance your organization, test your UAS product or launch your commercial drone operation!',
                        style: TextStyle(color: Colors.black, fontSize: 22)),
                  ),
                  RichText(
                    text: TextSpan(
                        text:
                            'Get real-time footage from the air of an on going emergency or assess damage after an event',
                        style: TextStyle(color: Colors.black, fontSize: 22)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

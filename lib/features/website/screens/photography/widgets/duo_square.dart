import 'package:flutter/material.dart';

class DuoSquare extends StatelessWidget {
  const DuoSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    width: 100,
                    color: Colors.white,
                  ),
                  Container(
                    height: 500,
                    width: 800,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      'images/res.jpg',
                    ))),
                  ),
                  Container(
                    height: 500,
                    width: 230,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 313,
                    width: 500,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ' " Enterprise Photography deliver ',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('high quality professional ',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('photographs every time and ',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('always when required " ',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('always when required " ',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Container(
                    height: 500,
                    width: 320,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 313,
                    width: 500,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ' " Enterprise Photography deliver ',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('high quality professional ',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('photographs every time and ',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('always when required " ',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('always when required " ',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 500,
                    width: 115,
                    color: Colors.black,
                  ),
                  Container(
                    height: 500,
                    width: 800,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      'images/res.jpg',
                    ))),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

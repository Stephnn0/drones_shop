import 'package:drone_website/features/auth/auth_screen.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: const [
                  Text(
                    'Category',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: const [
                  Text('Store', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: const [
                  Text('Fly Safe', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: const [
                  Text('Explore', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Products Category',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ]),
            /////////////////////////////////////////////////////////////////////////////////////////////////////////
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AuthScreen.routeName);
                  },
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(' Category', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Products ', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Products ', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Products', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Products ', style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
                Text('Products', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Products', style: TextStyle(color: Colors.white)),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(' Home', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Content ', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Products ', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Photography', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Production  ', style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
                Text('  Studios', style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('About', style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                    'Copyright @ 2022 Pitajaya Drone Studios All Rights Reserved.',
                    style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('Feedback on web experience.',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:drone_website/constants/global_variables.dart';
import 'package:drone_website/features/responsive/responsive_layout_website.dart';
import 'package:drone_website/features/website/responsive/mobile_website_layout.dart';
import 'package:drone_website/features/website/responsive/web_website_layout.dart';
import 'package:flutter/material.dart';

class HomeStore extends StatelessWidget {
  const HomeStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    shrinkWrap: true,
                    children: [
                      'LOGOUT',
                    ]
                        .map((e) => InkWell(
                              onTap: () {
                                /////////////////////////////////////////////////////////////

                                firebaseAuth.signOut().then((value) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResponsiveLayoutWebsite(
                                                mobileWebsiteLayout:
                                                    MobileWebsiteLayout(),
                                                webWebsiteLayout:
                                                    WebWebsiteLayout(),
                                              )));
                                });

                                ///////////////////////////////////////////////////////////////
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                                child: Text(e),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            )),
      ]),
    );
  }
}
